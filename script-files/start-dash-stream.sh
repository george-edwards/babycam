#!/bin/bash
mkdir -p /dev/shm/dash

ffmpeg -y \
-fflags +nobuffer \
-input_format h264 \
-i /dev/video0 \
-r 30 \
-c:v copy \
-f dash \
-seg_duration 3 \
-streaming 1 \
-window_size 3 \
-use_wallclock_as_timestamps 1 \
-remove_at_exit 1 \
/dev/shm/dash/live.mpd
