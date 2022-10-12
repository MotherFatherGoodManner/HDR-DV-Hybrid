ffmpeg -i "%link%.mp4" -c:v copy -an -vbsf hevc_mp4toannexb -f hevc hdr.hevc
