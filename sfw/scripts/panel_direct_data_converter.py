

from PIL import Image
import argparse
import pathlib
import os
import numpy as np
import serial
import re
import signal
import sys
import warnings

# This method returns a list of the available COM ports to talk on
def serial_ports():
    """ Lists serial port names
        :raises EnvironmentError:
            On unsupported or unknown platforms
        :returns:
            A list of the serial ports available on the system
    """
    if sys.platform.startswith('win'):
        ports = ['COM%s' % (i + 1) for i in range(256)]
    elif sys.platform.startswith('linux') or sys.platform.startswith('cygwin'):
        # this excludes your current terminal "/dev/tty"
        ports = glob.glob('/dev/tty[A-Za-z]*')
    elif sys.platform.startswith('darwin'):
        ports = glob.glob('/dev/tty.*')
    else:
        raise EnvironmentError('Unsupported platform')

    result = []
    for port in ports:
        try:
            s = serial.Serial(port)
            s.close()
            result.append(port)
        except (OSError, serial.SerialException):
            pass
    return result

# this method removes ANSI escape sequnces from a string
def trim_escape_codes(input_str):
    reaesc = re.compile(r'\x1b[^m]*m')
    return reaesc.sub('', input_str)

# This method tries to find a pulse oximeter on available COM ports
def find_device():
    for com_port in serial_ports():
        try:
            # open a connection on this COM port at 115.2kBaud
            dev = serial.Serial(com_port, 115200, timeout=1)
            # Ask device for identification string
            # Only end lines with carriage return character '\r' since that's what PutTy does and firmware expects
            dev.write(b"*IDN?\r")
            # Read response, decode into ascii, and remove all ANSI escape characters
            response = dev.readline().decode('ascii')
            response = trim_escape_codes(response)

            # Close active COM port
            dev.close()

            # check if response to *IDN? starts with "Pulse Oximeter"
            if (response.startswith("LED Panel Controller")):
                return com_port

        except:
            print(f"Attemp failed on {com_port}")
            dev.close()

# https://stackoverflow.com/questions/18114560/python-catch-ctrl-c-command-prompt-really-want-to-quit-y-n-resume-executi
def exit_gracefully(signum, frame):
    # restore the original signal handler as otherwise evil things will happen
    # in raw_input when CTRL+C is pressed, and our signal handler is not re-entrant
    signal.signal(signal.SIGINT, original_sigint)

    sys.exit(1)

    # restore the exit gracefully handler here    
    signal.signal(signal.SIGINT, exit_gracefully)

def scale_image(input_image):
    return input_image.resize((64, 64))

def image_gamma_correction(input_image):
    im = np.array(input_image)

    Corrected = ((im / 255) ** (1 / 0.3)) * 255
    
    pil_img = Image.fromarray(np.uint8(Corrected))

    return pil_img

# must already be 64x64 pixels
def image_to_byte_array(input_image):
    # create byte array
    size = 16384
    output_byte_array = bytearray(size)

    rgb_im = input_image.convert("RGB")

    # add at least one white pixel
    for byte in range (2048):
        output_byte_array[byte + 10240] |= 63

    # iterate over rows and columns in image
    for row in range(32):
        for column in range(64):
            
            # get curent color at this pixelon row n
            current_px = rgb_im.getpixel((column, row))

            # determine red data for row n (0b00xxxxx1)
            output_byte_array[column + (row*64)]            |= (int(current_px[0] > 0))
            output_byte_array[column + (row*64) + 2048]     |= (int(current_px[0] > 128))
            output_byte_array[column + (row*64) + 4096]     |= (int(current_px[0] > 32))
            output_byte_array[column + (row*64) + 6144]     |= (int(current_px[0] > 160))
            output_byte_array[column + (row*64) + 8192]     |= (int(current_px[0] > 64))
            output_byte_array[column + (row*64) + 10240]    |= (int(current_px[0] > 192))
            output_byte_array[column + (row*64) + 12288]    |= (int(current_px[0] > 96))
            output_byte_array[column + (row*64) + 14336]    |= (int(current_px[0] > 224))

            # determine green data for row n (0b00xxx1xx)
            output_byte_array[column + (row*64)]            |= (int(current_px[1] > 0) << 2)
            output_byte_array[column + (row*64) + 2048]     |= (int(current_px[1] > 128) << 2)
            output_byte_array[column + (row*64) + 4096]     |= (int(current_px[1] > 32) << 2)
            output_byte_array[column + (row*64) + 6144]     |= (int(current_px[1] > 160) << 2)
            output_byte_array[column + (row*64) + 8192]     |= (int(current_px[1] > 64) << 2)
            output_byte_array[column + (row*64) + 10240]    |= (int(current_px[1] > 192) << 2)
            output_byte_array[column + (row*64) + 12288]    |= (int(current_px[1] > 96) << 2)
            output_byte_array[column + (row*64) + 14336]    |= (int(current_px[1] > 224) << 2)

            # determine blue data for row n (0b00x1xxxx)
            output_byte_array[column + (row*64)]            |= (int(current_px[2] > 0) << 4)
            output_byte_array[column + (row*64) + 2048]     |= (int(current_px[2] > 128) << 4)
            output_byte_array[column + (row*64) + 4096]     |= (int(current_px[2] > 32) << 4)
            output_byte_array[column + (row*64) + 6144]     |= (int(current_px[2] > 160) << 4)
            output_byte_array[column + (row*64) + 8192]     |= (int(current_px[2] > 64) << 4)
            output_byte_array[column + (row*64) + 10240]    |= (int(current_px[2] > 192) << 4)
            output_byte_array[column + (row*64) + 12288]    |= (int(current_px[2] > 96) << 4)
            output_byte_array[column + (row*64) + 14336]    |= (int(current_px[2] > 224) << 4)
            
            # get curent color at this pixelon row n + 32
            current_px = input_image.getpixel((column, row + 32))
            
            # determine red data for row n +32 (0b00xxxx1x)
            output_byte_array[column + (row*64)]            |= (int(current_px[0] > 0) << 1)
            output_byte_array[column + (row*64) + 2048]     |= (int(current_px[0] > 128) << 1)
            output_byte_array[column + (row*64) + 4096]     |= (int(current_px[0] > 32) << 1)
            output_byte_array[column + (row*64) + 6144]     |= (int(current_px[0] > 160) << 1)
            output_byte_array[column + (row*64) + 8192]     |= (int(current_px[0] > 64) << 1)
            output_byte_array[column + (row*64) + 10240]    |= (int(current_px[0] > 192) << 1)
            output_byte_array[column + (row*64) + 12288]    |= (int(current_px[0] > 96) << 1)
            output_byte_array[column + (row*64) + 14336]    |= (int(current_px[0] > 224) << 1)

            # determine green data for row n + 32 (0b00xx1xxx)
            output_byte_array[column + (row*64)]            |= (int(current_px[1] > 0) << 3)
            output_byte_array[column + (row*64) + 2048]     |= (int(current_px[1] > 128) << 3)
            output_byte_array[column + (row*64) + 4096]     |= (int(current_px[1] > 32) << 3)
            output_byte_array[column + (row*64) + 6144]     |= (int(current_px[1] > 160) << 3)
            output_byte_array[column + (row*64) + 8192]     |= (int(current_px[1] > 64) << 3)
            output_byte_array[column + (row*64) + 10240]    |= (int(current_px[1] > 192) << 3)
            output_byte_array[column + (row*64) + 12288]    |= (int(current_px[1] > 96) << 3)
            output_byte_array[column + (row*64) + 14336]    |= (int(current_px[1] > 224) << 3)

            # determine blue data for row n +32 (0b001xxxxx)
            output_byte_array[column + (row*64)]            |= (int(current_px[2] > 0) << 5)
            output_byte_array[column + (row*64) + 2048]     |= (int(current_px[2] > 128) << 5)
            output_byte_array[column + (row*64) + 4096]     |= (int(current_px[2] > 32) << 5)
            output_byte_array[column + (row*64) + 6144]     |= (int(current_px[2] > 160) << 5)
            output_byte_array[column + (row*64) + 8192]     |= (int(current_px[2] > 64) << 5)
            output_byte_array[column + (row*64) + 10240]    |= (int(current_px[2] > 192) << 5)
            output_byte_array[column + (row*64) + 12288]    |= (int(current_px[2] > 96) << 5)
            output_byte_array[column + (row*64) + 14336]    |= (int(current_px[2] > 224) << 5)

    return output_byte_array

def write_output_file(input_array):

    # open file for writing
    f = open("output_file.dru", "w")

    # Start array
    f.write("{\n")

    for byte in range(16384):
        if byte == 16384 - 1:
            f.write(bin(input_array[byte]) + "\n")
        else:
            f.write(bin(input_array[byte]) + ",\n")

    f.write("};\n")

    f.close()

def enable_panel(dev):
    dev.write(b"Copy Panel Scratchpad Contents\r")
    response = dev.readline().decode('utf-8')
    response = trim_escape_codes(response)

    dev.reset_input_buffer()

    # check if response to *IDN? starts with "Pulse Oximeter"
    if (response.startswith("Copied Data!")):
        dev.reset_output_buffer()

    dev.write(b"Set Panel Power: On\r")

def main():
    # set up arguments to pass
    parser = argparse.ArgumentParser(description='Scales and converts passed image to panel_direct_data_buffer[] format, with optional outputs')
    parser.add_argument('--input_path', type=pathlib.Path, required=True, help='The path to the image file to scale and convert')
    parser.add_argument('--output', required=True, help="Type of script output (serial or file)")
    parser.add_argument('-d', '--display', action="store_true", help="Force transferred image to be displayed")
    args = parser.parse_args()

    # open passed image
    im = Image.open(args.input_path).convert('RGB')
    scaled_image = scale_image(im)
    
    # conert scaled image to bytes
    image_byte_array = image_to_byte_array(image_gamma_correction(scaled_image))

    # determine action based on passed output type
    # write to file
    if (args.output == "file"):
        # write to an output file
        # make this a passable parameter with file name
        write_output_file(image_byte_array)
    # write to serial port
    elif (args.output == "serial"):
        # Find pulse oximeter on its COM port first
        com_port = find_device()
        if (com_port): print(f"Found LED Panel Controller on {com_port}")
        else: print("Could not find LED Panel Controller")
        
        # open a connection on this COM port at 115.2kBaud
        with serial.Serial(com_port, 115200) as dev:

            # loop over frames, send 2kB at a time
            for frame in range(8):
                values = list(image_byte_array[((frame)*2048):((frame+1)*2048)])
                # create output sting to send to device
                output_str = "Fill Panel Scratchpad: " + str(frame*2048) + ", "
                for byte in values:
                    output_str = output_str + chr(byte+14)
                output_str = output_str + "\r"
                # write to device
                dev.write(bytes(output_str, 'utf-8'))

                response = dev.readline().decode('utf-8')
                response = trim_escape_codes(response)

                dev.reset_input_buffer()

                # check if response to *IDN? starts with "Pulse Oximeter"
                if (response.startswith("Received Data!")):
                    dev.reset_output_buffer()

            # tell MCU to load scratchpad into active buffer
            if args.display:
                enable_panel(dev)

            # Close active COM port
            dev.close()

if __name__ == "__main__":

    original_sigint = signal.getsignal(signal.SIGINT)
    signal.signal(signal.SIGINT, exit_gracefully)

    with warnings.catch_warnings():
        warnings.simplefilter("ignore")

        main()