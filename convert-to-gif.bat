:START
@ECHO OFF
cd inputs
echo Type filename plus extension. [working in /inputs]
set /p INPUT=""
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
ffmpeg.exe -i inputs/%INPUT% -filter:v scale=%SCALEx%:%SCALEy% -pix_fmt rgb24 outputs/%OUTPUT%.gif
@ECHO OFF
echo ->->->->->->->->->->->->->->->->->->->->->->->->
echo Gif created. Look in /outputs for the output.
set /p exitte="Press enter to exit window."