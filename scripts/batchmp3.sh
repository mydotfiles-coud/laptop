#!/bin/bash

#read -p 'Please enter the Youtube Link: ' linkvar
read -p 'Mp3 Quality lvl: 0-9 (0 is highest) ' qualvar

for i in *.*
do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  ffmpeg -i "$i" -codec:a libmp3lame -qscale:a $qualvar "${name}.mp3" && rm "$i"
done

#for i in *.avi;
#  do name=`echo "$i" | cut -d'.' -f1`
#  echo "$name"
#  ffmpeg -i "$i" "${name}.mov"
#done