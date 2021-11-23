import subprocess
import time

while True:
    subprocess.call(['bash', '/home/pi/sierracam/add-text-overlay.sh'])
    time.sleep(2)
