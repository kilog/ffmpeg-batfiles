:START
@echo off
cd inputs
echo Type the filename and extension. [working in /inputs]
set /p input=""
cd ..
echo Type the output filename and extension.
set /p output=""
echo Type the desired framerate. (note: this method uses the -r argument. only input an integer)
set /p framerate=""
echo Ready to convert.
echo ->->->->->->->->->->->->->->->->->->->->->->->->
echo Converting...
ffmpeg -i inputs/%input% -c:v libvpx -pix_fmt yuv420p -slices 4 -qmin 0 -crf 10 -r %framerate% -qmax 30 -qcomp 1 -b:v 0 outputs/%output%
echo Finished!
echo ->->->->->->->->->->->->->->->->->->->->->->->->
set /p enditall="Press enter to exit."