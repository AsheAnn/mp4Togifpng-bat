cd /d %~dp0
md gif

for %%a in ("*.mp4") do "C:/ffmpeg/bin/ffmpeg.exe" -n -i "%%a" -r 24 -vframes 216 -filter_complex "[0:v] scale=800:-1,split[s0][s1];[s0]palettegen=stats_mode=diff[p];[s1][p]paletteuse=dither=floyd_steinberg" -loop 0  "gif\%%~na".gif

cd gif
for %%a in ("*.gif") do "C:/gifsicle/gifsicle.exe" -O3 "%%a" -o "%%~na".gif

pause