@echo off

@echo off

set /p fout= Enter ^[36mDesired File[0m Name:

echo.

echo ^[92mMuxing Video+Audio....[0m

mkvmerge -o "%fout%.mkv" "output.hevc" "audio.mp4"


pause.
