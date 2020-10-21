#!/bin/sh
#  b64_converter.sh
#     Converts b64 to webm then to wav ~ just needs to be done this way
#
#  Created by Lawrence Binding on 19/10/2020.



b64_webm=$(pwd)/b64_webm.py

subject_dir=$1
current_dir=$(pwd)

cd ${subject_dir}
mkdir b64

for n in *; do
  num=$(echo $n | sed 's/[^0-9]*//g')
  ${b64_webm} --in ${n} --out ${num}_webm
  ffmpeg -i ${num}_webm.webm -ab 160k -ar 44100 -vn ${num}.wav
  rm -r ${num}_webm.webm
  mv ${n} b64/${n}
  unset -v num
done

cd ${current_dir}
