:START
@ECHO OFF
cd inputs
echo Type filename plus extension. [working in /inputs]
set /p INPUT=""
echo ->->->->->->->->->->->->->->->->->->->->->->->->
echo Generating palette.
ffmpeg -i %INPUT% -vf palettegen ../palettes/%INPUT%.png
echo Finished.
echo ->->->->->->->->->->->->->->->->->->->->->->->->
echo Continuing...
cd ..
cd outputs
echo Type output filename (no extension.) [working in /outputs]
set /p OUTPUT=""
cd ..
echo Type width scale. [eg. the val. for x in x:240]
set /p SCALEx=""
echo Type height scale. [eg. the val. for y in 240:y]
set /p SCALEy=""
echo ->->->->->->->->->->->->->->->->->->->->->->->->
@ECHO ON
ffmpeg -i inputs/%INPUT% -i palettes/%INPUT%.png -lavfi ""scale=%SCALEx%:%SCALEy%:flags=lanczos" [x]; [x][1:v] paletteuse" outputs/%OUTPUT%.gif
@ECHO OFF
echo ->->->->->->->->->->->->->->->->->->->->->->->->
echo Gif created. Look in /outputs for the output.
set /p exitte="Press enter to exit window."