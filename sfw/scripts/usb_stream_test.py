
import subprocess
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
import time
import panel_direct_data_converter


from PIL import ImageDraw, ImageFont

import random

# venv_path = "C:/Users/Drew Maatman/Documents/KiCad Projects/Projects/LED_Panel_Controller/sfw/scripts/venv/Scripts/python.exe"
# subprocess.Popen([venv_path, "panel_direct_data_converter.py", "--output=serial", "-a", "--input=test_images\\generated_images\\1_test.png"])

def create_image():
    # creating image object which is of specific color
    im = Image.new(mode = "RGB", size = (256, 256), color = (random.randint(64, 255), random.randint(64, 255), random.randint(64, 255)))

    draw = ImageDraw.Draw(im)

    font = ImageFont.truetype(r'test_images\arial.ttf', 128) 

    # drawing text size
    draw.text((32, 64), "fuck", font = font, align ="right", fill = "black")

    return im


def set_usb_mode(com_port):
    # open a connection on this COM port at 115.2kBaud
    with serial.Serial(com_port, 115200) as dev:
        
        dev.write(b"Set Mode: USB Stream\r")
        response = dev.readline().decode('utf-8')
        response = panel_direct_data_converter.trim_escape_codes(response)
        print(response)
        dev.reset_input_buffer()
        dev.close()

# Find target
com_port = panel_direct_data_converter.find_device()
if (com_port): print(f"Found LED Panel Controller on {com_port}")
else: print("Could not find LED Panel Controller")

set_usb_mode(com_port)

while (1):
    panel_direct_data_converter.send_image(create_image(), com_port)
    time.sleep(1)