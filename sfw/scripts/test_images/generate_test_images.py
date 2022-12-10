
from PIL import Image, ImageDraw, ImageFont

import random

def create_image(text):

    # creating image object which is of specific color
    im = Image.new(mode = "RGB", size = (256, 256), color = (random.randint(64, 255), random.randint(64, 255), random.randint(64, 255)))

    draw = ImageDraw.Draw(im)

    font = ImageFont.truetype(r'arial.ttf', 128) 

    # drawing text size
    draw.text((32, 64), text, font = font, align ="right", fill = "black")

    filename = str(text) + "_test.png"

    im.save("generated_images/" + filename)

for x in range(1, 513):
    create_image(str(x))
    print(x)

print("I'm done")