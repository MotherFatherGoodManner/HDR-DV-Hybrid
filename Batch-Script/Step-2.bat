@echo off

@echo off

set /p link= Enter ^[36mHDR mp4 File[0m Name:

echo.

echo ^[92mExtracting HDR Layer...[0m

ffmpeg -i "%link%.mp4" -c:v copy -an -vbsf hevc_mp4toannexb -f hevc hdr.hevc


pause.
