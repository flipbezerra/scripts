import os
import time
import datetime

fileLocation = r'C:\Users\Felipe\Pictures\NSFW\ZONE'

# def noMeta(file):
#   print("gutting exif data from {}".format(file))
#   piexif.remove(file)

# for root, dir, files in os.walk(fileLocation):
#   for file in files:
#     if file.lower().endswith(".jpg"):
#       noMeta(os.path.join(root, file))

year = 2017
month = 11
day = 1
hour = 19
minute = 50
second = 0

for filename in os.listdir(fileLocation):
    f = os.path.join(fileLocation, filename)
    if os.path.isfile(f):
        print(f)
    date = datetime.datetime(year=year, month=month, day=day, hour=hour, minute=minute, second=second)
    modTime = time.mktime(date.timetuple())
    day+=1

    os.utime(f, (modTime, modTime))