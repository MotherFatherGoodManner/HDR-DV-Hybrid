ffmpeg -i "%link%.mp4" -c:v copy -vbsf hevc_mp4toannexb -f hevc - | dovi_tool -m 3 extract-rpu - -o RPU.bin
