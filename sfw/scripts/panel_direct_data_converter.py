

from PIL import Image
import argparse
import pathlib

def scale_image(input_image):
    return input_image.resize((64, 64))

# must already be 64x64 pixels
def image_to_byte_array(input_image):
    # create byte array
    size = 16384
    output_byte_array = bytearray(size)

    # iterate over rows and columns in image
    for row in range(32):
        for column in range(64):
            
            # get curent color at this pixelon row n
            current_px = input_image.getpixel((row, column))

            # determine red data for row n (0b00xxxxx1)
            output_byte_array[column + (row*32)]            |= ((current_px[0] > 0))
            output_byte_array[column + (row*32) + 2048]     |= ((current_px[0] > 128))
            output_byte_array[column + (row*32) + 4096]     |= ((current_px[0] > 32))
            output_byte_array[column + (row*32) + 6144]     |= ((current_px[0] > 160))
            output_byte_array[column + (row*32) + 8192]     |= ((current_px[0] > 64))
            output_byte_array[column + (row*32) + 10240]    |= ((current_px[0] > 192))
            output_byte_array[column + (row*32) + 12288]    |= ((current_px[0] > 96))
            output_byte_array[column + (row*32) + 14336]    |= ((current_px[0] > 224))

            # determine green data for row n (0b00xxx1xx)
            output_byte_array[column + (row*32)]            |= ((current_px[1] > 0) << 2)
            output_byte_array[column + (row*32) + 2048]     |= ((current_px[1] > 128) << 2)
            output_byte_array[column + (row*32) + 4096]     |= ((current_px[1] > 32) << 2)
            output_byte_array[column + (row*32) + 6144]     |= ((current_px[1] > 160) << 2)
            output_byte_array[column + (row*32) + 8192]     |= ((current_px[1] > 64) << 2)
            output_byte_array[column + (row*32) + 10240]    |= ((current_px[1] > 192) << 2)
            output_byte_array[column + (row*32) + 12288]    |= ((current_px[1] > 96) << 2)
            output_byte_array[column + (row*32) + 14336]    |= ((current_px[1] > 224) << 2)

            # determine blue data for row n (0b00x1xxxx)
            output_byte_array[column + (row*32)]            |= ((current_px[2] > 0) << 4)
            output_byte_array[column + (row*32) + 2048]     |= ((current_px[2] > 128) << 4)
            output_byte_array[column + (row*32) + 4096]     |= ((current_px[2] > 32) << 4)
            output_byte_array[column + (row*32) + 6144]     |= ((current_px[2] > 160) << 4)
            output_byte_array[column + (row*32) + 8192]     |= ((current_px[2] > 64) << 4)
            output_byte_array[column + (row*32) + 10240]    |= ((current_px[2] > 192) << 4)
            output_byte_array[column + (row*32) + 12288]    |= ((current_px[2] > 96) << 4)
            output_byte_array[column + (row*32) + 14336]    |= ((current_px[2] > 224) << 4)
            
            # get curent color at this pixelon row n + 32
            current_px = input_image.getpixel((row + 32, column))
            
            # determine red data for row n +32 (0b00xxxx1x)
            output_byte_array[column + (row*32)]            |= ((current_px[0] > 0) << 1)
            output_byte_array[column + (row*32) + 2048]     |= ((current_px[0] > 128) << 1)
            output_byte_array[column + (row*32) + 4096]     |= ((current_px[0] > 32) << 1)
            output_byte_array[column + (row*32) + 6144]     |= ((current_px[0] > 160) << 1)
            output_byte_array[column + (row*32) + 8192]     |= ((current_px[0] > 64) << 1)
            output_byte_array[column + (row*32) + 10240]    |= ((current_px[0] > 192) << 1)
            output_byte_array[column + (row*32) + 12288]    |= ((current_px[0] > 96) << 1)
            output_byte_array[column + (row*32) + 14336]    |= ((current_px[0] > 224) << 1)

            # determine green data for row n + 32 (0b00xx1xxx)
            output_byte_array[column + (row*32)]            |= ((current_px[1] > 0) << 3)
            output_byte_array[column + (row*32) + 2048]     |= ((current_px[1] > 128) << 3)
            output_byte_array[column + (row*32) + 4096]     |= ((current_px[1] > 32) << 3)
            output_byte_array[column + (row*32) + 6144]     |= ((current_px[1] > 160) << 3)
            output_byte_array[column + (row*32) + 8192]     |= ((current_px[1] > 64) << 3)
            output_byte_array[column + (row*32) + 10240]    |= ((current_px[1] > 192) << 3)
            output_byte_array[column + (row*32) + 12288]    |= ((current_px[1] > 96) << 3)
            output_byte_array[column + (row*32) + 14336]    |= ((current_px[1] > 224) << 3)

            # determine blue data for row n +32 (0b001xxxxx)
            output_byte_array[column + (row*32)]            |= ((current_px[2] > 0) << 5)
            output_byte_array[column + (row*32) + 2048]     |= ((current_px[2] > 128) << 5)
            output_byte_array[column + (row*32) + 4096]     |= ((current_px[2] > 32) << 5)
            output_byte_array[column + (row*32) + 6144]     |= ((current_px[2] > 160) << 5)
            output_byte_array[column + (row*32) + 8192]     |= ((current_px[2] > 64) << 5)
            output_byte_array[column + (row*32) + 10240]    |= ((current_px[2] > 192) << 5)
            output_byte_array[column + (row*32) + 12288]    |= ((current_px[2] > 96) << 5)
            output_byte_array[column + (row*32) + 14336]    |= ((current_px[2] > 224) << 5)

    return output_byte_array


def main():
    # set up arguments to pass
    parser = argparse.ArgumentParser(description='Scales and converts passed image to panel_direct_data_buffer[] format')
    parser.add_argument('Image_Path', type=pathlib.Path, help='The path to the image file to scale and convert')
    args = parser.parse_args()

    # open passed image
    im = Image.open(args.Image_Path)
    scaled_image = scale_image(im)
    
    # conert scaled image to bytes
    image_byte_array = image_to_byte_array(scaled_image)

    # remove this later
    for byte in image_byte_array:
        print(byte)


if __name__ == "__main__":
    main()