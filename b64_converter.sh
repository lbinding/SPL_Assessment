#!/bin/sh
#  b64_converter.sh
#     Converts b64 to webm then to wav ~ just needs to be done this way
#
#  Created by Lawrence Binding on 19/10/2020.



b64_webm=/Users/lawrencebinding/Desktop/scripts/language_assessment/webm_file.py

for n in *; do
    mkdir b64
    ${b64_webm} --b64 ${n} --out ${n}_webm
    ffmpeg -i ${n}_webm.webm -ab 160k -ar 44100 -vn ${n}.wav
    rm -r ${n}_webm.webm
    mv ${n} b64/${n}.txt
done
