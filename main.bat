@echo off

SET monthDir=%date:~0,4%%date:~5,2%
SET downloadDir=C:\Users\username\Downloads\

echo %monthDir%

IF EXIST %monthDir% (
    echo allready exists
) ELSE (
    mkdir %monthDir%
)

cd %downloadDir%
ren *.png-* *.png
ren *.jpg-* *.jpg
move /y %downloadDir%*.jpg %monthDir%
move /y %downloadDir%*.png %monthDir%
