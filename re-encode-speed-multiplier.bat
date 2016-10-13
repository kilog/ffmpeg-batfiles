:START
@echo off
cd inputs
echo Input filename and extension. [working in /inputs]
set /p input=""
cd ..
echo Input the speed multiplier. (eg. 1.5 [slow by half], 0.5 [speed by half], 2.0 [slow by double])
set /p timestart=""
echo Input filename and extension for output. [working in /outputs]
set /p output=""
echo ->->->->->->->->->->->->->->->->->->->->->->->->
echo Converting...
ffmpeg -i inputs/%input% -an -c:v libvpx -pix_fmt yuv420p -filter:vf "setpts=%timestart%*PTS" -slices 4 -qmin 0 -crf 10 -qmax 30 -qcomp 1 -b:v 0 outputs/%output%
echo Finished.
echo ->->->->->->->->->->->->->->->->->->->->->->->->
set /p enditall="Hit enter to close the window."