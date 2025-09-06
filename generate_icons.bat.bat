@echo off
setlocal enabledelayedexpansion

REM ===== Настройки =====
set RES_DIR=app\src\main\res
set BG_COLOR=#000000
set TEXT_COLOR=#62A1FF
set TEXT=FE

REM ===== Размеры и папки =====
for %%S in (48 72 96 144 192) do (
    set SIZE=%%S
    set FOLDER=
    if !SIZE! EQU 48 set FOLDER=mipmap-mdpi
    if !SIZE! EQU 72 set FOLDER=mipmap-hdpi
    if !SIZE! EQU 96 set FOLDER=mipmap-xhdpi
    if !SIZE! EQU 144 set FOLDER=mipmap-xxhdpi
    if !SIZE! EQU 192 set FOLDER=mipmap-xxxhdpi

    mkdir "%RES_DIR%\!FOLDER!" 2>nul

    magick -size !SIZE!x!SIZE! xc:%BG_COLOR% -gravity center -fill %TEXT_COLOR% -pointsize !SIZE!/2 -font Arial -annotate 0 %TEXT% "%RES_DIR%\!FOLDER!\ic_launcher.png"
    magick -size !SIZE!x!SIZE! xc:%BG_COLOR% -gravity center -fill %TEXT_COLOR% -pointsize !SIZE!/2 -font Arial -annotate 0 %TEXT% "%RES_DIR%\!FOLDER!\ic_launcher_round.png"
)

echo Все иконки созданы!
pause
