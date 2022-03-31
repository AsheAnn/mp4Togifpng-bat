cd /d %~dp0
md png

for %%a in ("*.mp4") do "C:/ffmpeg/bin/ffmpeg.exe" -n -i "%%a" -ss 00:00:00.00 -frames:v 1 -pix_fmt rgb24 -an "png\%%~na_0.png"
for %%a in ("*.mp4") do "C:/ffmpeg/bin/ffmpeg.exe" -n -i "%%a" -ss 00:00:07.12 -frames:v 1 -pix_fmt rgb24 -an "png\%%~na_180.png"

pause