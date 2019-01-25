@setlocal enableextensions
@cd /d "%~dp0"

set mypath=%cd%

REM Install Image Magick

"ImageMagick-7.0.8-24-Q16-x64-dll.exe"

REM Install Ghostscript

"gs926aw64.exe"

REM Copy bat file to drive

xcopy /Y "%mypath%\pdf2png.bat" "%ProgramFiles%\pdf2png\"

REM Setup Registry

REG ADD HKEY_CLASSES_ROOT\SystemFileAssociations\.pdf\shell\pdf2png /t REG_SZ /d "Convert to PNG"
REG ADD HKEY_CLASSES_ROOT\SystemFileAssociations\.pdf\shell\pdf2png\command /t REG_SZ /d "\"%ProgramFiles%\pdf2png\pdf2png.bat\" \"%%1\""

PAUSE