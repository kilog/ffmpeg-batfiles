:START
@echo off
cd inputs
echo Input filename and extension to crop time on [working in /inputs]
set /p input=""
cd ..
echo Input starting time in seconds. (Integer value)
set /p timestart=""
echo Input stopping time in seconds. (Integer value)
set /p timestop=""
echo Input the output filename and extension. [working in /outputs]
set /p output=""
echo Ready to convert.
echo ->->->->->->->->->->->->->->->->->->->->->->->->
echo Converting...
ffmpeg -i inputs/%input% -an -c:v libvpx -pix_fmt yuv420p -slices 4 -qmin 0 -crf 10 -qmax 30 -qcomp 1 -b:v 0 -vf trim=%timestart%:%timestop% outputs/%output%
echo Finished.
echo ->->->->->->->->->->->->->->->->->->->->->->->->
set /p enditall="Hit enter to close the window."