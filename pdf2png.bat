ECHO OFF
SET fileName=%~n1
SET fileExtension=%~x1

IF /I "%fileExtension%" NEQ ".pdf" (
	exit
)

"%ProgramFiles%\ImageMagick-7.0.8-Q16\magick.exe" "%fileName%%fileExtension%" "%fileName%.png"
