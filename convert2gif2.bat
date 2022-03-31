cd /d %~dp0
md gifs
for %%a in ("*.mp4") do "C:/ffmpeg/bin/ffmpeg.exe"  -n -i "%%a" -r 30 -vframes 300 -filter_complex "[0:v] fps=20,scale=w=1080:h=-1,split [a][b];[a] palettegen=stats_mode=single [p];[b][p] paletteuse=new=1" -loop 0  -an "gifs\%%~na".gif

pause