@ECHO OFF
cd inputs
echo Input filename plus extension to generate a palette of [working in /inputs]
cd ..
set /p input=""
echo ->->->->->->->->->->->->->->->->->->->->->->->->
echo Generation starting.
@ECHO ON
ffmpeg -i inputs/%input% -vf palettegen palettes/%input%.png
@ECHO OFF
echo Palette converted.
echo ->->->->->->->->->->->->->->->->->->->->->->->->
set /p exitto="Hit enter to exit window."