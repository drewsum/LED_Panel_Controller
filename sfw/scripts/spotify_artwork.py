import spotipy
from spotipy.oauth2 import SpotifyOAuth
import cred
from PIL import Image
import requests
from io import BytesIO

import panel_direct_data_converter
import serial
import time

def get_image():
    scope = "user-read-playback-state"
    sp = spotipy.Spotify(auth_manager=SpotifyOAuth(client_id=cred.client_id, client_secret= cred.client_secret, redirect_uri=cred.redirect_url, scope=scope))
    results = sp.currently_playing()
    for key, value in results.items():
        if key == "item":
            album = value["album"]

    for key, value in album.items():
        if key == "images":
            image = value[0]
            
    for key, value in image.items():
        if key == "url":
            image_url = value

    response = requests.get(image_url)
    return Image.open(BytesIO(response.content))

def get_album():
    scope = "user-read-playback-state"
    sp = spotipy.Spotify(auth_manager=SpotifyOAuth(client_id=cred.client_id, client_secret= cred.client_secret, redirect_uri=cred.redirect_url, scope=scope))
    results = sp.currently_playing()
    for key, value in results.items():
        if key == "item":
            album = value["album"]
            
    return album["uri"]

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

print("Streaming Spotify Album Art")

old_album = None
while (1):
    try:
        if old_album != get_album():
            album_art = get_image()
            panel_direct_data_converter.send_image(album_art, com_port)
            old_album = get_album()
            print("Got artwork for " + str(old_album))
        else:
            print("No new music playing: " + time.strftime("%H:%M:%S", time.localtime()))
        time.sleep(10)
    except:
        print("Error getting artwork: " + time.strftime("%H:%M:%S", time.localtime()))
        time.sleep(10)
