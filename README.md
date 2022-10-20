# Create Hybrid HDR-DV Video
A Simple Guide to create Dolby Vision Files with HDR Fallback:

### Things Needed :
The below Mentioned Binaries are Required. Always try to use `Latest Version`.

- `FFMPEG` - Latest Version(Exe or Anything). Get it from [https://ffmpeg.org/ffmpeg.html](https://ffmpeg.org/ffmpeg.html)
- `MKVMERGE` - Latest Version mkvmerge cli (comes with mkvnixtool). Get it from [https://mkvtoolnix.download](https://mkvtoolnix.download)
- `DOVI_TOOL` - Latest Version(Exe or Anything). Get it from [https://github.com/quietvoid/dovi_tool/releases](https://github.com/quietvoid/dovi_tool/releases)
- `HDR File` - Make Sure, to rename it as in Command or You can change in Command.
- `DOVi File` - Make Sure, to rename it as in Command or You can change in Command.

### Put AllRequired Binary Files in same Folder or Add Path in Environment
#### Now Executes the below Commands
1. `ffmpeg -i "dovi_file_name.mp4" -c:v copy -vbsf hevc_mp4toannexb -f hevc - | dovi_tool -m 3 extract-rpu - -o RPU.bin`

2. `ffmpeg -i "hdr_file_name.mp4" -c:v copy -an -vbsf hevc_mp4toannexb -f hevc hdr.hevc`

3. `dovi_tool inject-rpu -i "hdr.hevc" --rpu-in RPU.bin -o output.hevc`


- Next Command is used for muxing output.hevc file (video file) with Audios & Subtitles.
- You can simply skip CMD and Mux manually using mkvnixtool or tsmuxer.

#### Mux using CLI

1. `mkvmerge -o "final_out.mkv" "output.hevc" "audio.mp4"`


#### 🚫 Warning : Check FPS , Runtimes or any fixes needed or not in output hevc file.

### Reminder :
These method wont help you to make hyrid of BluRay and WEB-DL videos...
There is another method. I'll create that later.

