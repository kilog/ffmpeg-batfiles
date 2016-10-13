@echo off
echo Input filename plus file extension. [working in /inputs]
set /p input=""
echo Input filename (no extension.) [working in /outputs]
set /p output=""
echo ->->->->->->->->->->->->->->->->->->->->->->->->
ffmpeg -i inputs/%input% -an -c:v libvpx -pix_fmt yuv420p -threads 4 -slices 4 -metadata title="rec- (225)" -r 60 -qmin 0 -crf 10 -qmax 30 -qcomp 1 -b:v 0 outputs/%output%.webm
echo ->->->->->->->->->->->->->->->->->->->->->->->->
set /p endding="Hit enter to close the window."