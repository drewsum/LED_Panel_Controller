
import subprocess
import time

env_path = "C:/Users/Drew Maatman/Documents/KiCad Projects/Projects/LED_Panel_Controller/sfw/scripts/venv/Scripts/python.exe"

subprocess.Popen([env_path, "panel_direct_data_converter.py", "--output=serial", "-a", "--input=test_images\\generated_images\\1_test.png])

#for x in range(279, 513):
#    file = str(x) + "_test.png"
#    subprocess.Popen([env_path, "panel_direct_data_converter.py", "--output=serial", "-a", "--input=test_images\\generated_images\\" + file])
#    time.sleep(15)