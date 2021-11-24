import subprocess
import time

while True:
    subprocess.call(['bash', '/home/pi/babycam/script-files/add-text-overlay.sh'])
    time.sleep(2)
