@echo off

@echo off

set /p link= Enter ^[36mDOVi mp4 File[0m Name:

echo.

echo ^[92mExtracting DOVi Layer....[0m

ffmpeg -i "%link%.mp4" -c:v copy -vbsf hevc_mp4toannexb -f hevc - | dovi_tool -m 3 extract-rpu - -o RPU.bin


pause.
