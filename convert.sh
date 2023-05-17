#!/bin/bash
cd "$(dirname "$0")"
for f in *\ *; do mv "$f" "${f// /_}"; done

for f in *.mov; do
    ../jumpcutter/bin/python3 ../jumpcutter/jumpcutter.py --input_file $f --frame_rate 60
done

# for file in *.mov; do
#     # ffmpeg -hwaccel videotoolbox -i "$file" -vf scale=1280:720 -c:v h264_videotoolbox -b:v 8000k -c:a copy "${file%.mov}_ALTERED.mov"
#     auto-editor "$file" -s 5 -res 1280,720 
# done

