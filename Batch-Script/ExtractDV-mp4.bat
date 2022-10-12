@echo off
title Samir
Color 0a
echo.
for %%i in (*.mkv) do mkvextract "%%i" tracks 0:"%%~ni_DOVI.mp4"

pause.
