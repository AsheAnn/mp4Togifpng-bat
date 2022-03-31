cd /d %~dp0
md gifs
for %%a in ("*.mp4") do "C:/ffmpeg/bin/ffmpeg.exe"  -n -i "%%a" -r 20 -vframes 220 -filter_complex "[0:v] fps=20,scale=w=420:h=-1,setpts=0.73333333333*PTS,split [a][b];[a] palettegen=stats_mode=single [p];[b][p] paletteuse=new=1" -loop 0  -an "gifs\%%~na".gif

pause