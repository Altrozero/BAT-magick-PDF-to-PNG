# BAT-magick-PDF-to-PNG
Instructions on how to convert a PDF to PNG on windows with magick, ghostscript.

"Installer" also added registry entries to update right click context menu.

# Steps (Automatic)
1) Download everything
2) Right click install.bat 
3) Run as administrator

# Steps (Manual)
1) Install Image Magick for windows <https://www.imagemagick.org/>
2) Install ghostscript <https://www.ghostscript.com/>
3) Edit bat file to have the location of the imagemagick install
4) Move bat file to final location
5) Update registry to add context menu item for PDF's
6) Test it and pray

# Step 1-2 (Install Programs)
Image Magick is the exe we use to convert it. <https://www.imagemagick.org/>

It requires GhostScript to hangle PDFs

# Step 3 (Find the Magick install location)
Edit line 9 parameter 1 to point to install location of magick.exe

# Step 4 (Move Bat File to Where you want it saved)
Move pdf2png.bat to the location you want it to stay at

# Step 5 (Context Menu)
Several ways to setup the registery, had problems on several machines setting it up within the HKCU but consistent results from HKCR

Create key HKEY_CLASSES_ROOT\SystemFileAssociations\.pdf\shell\pdf2png give the (Default) value data of what you want your context menu to show on right click "Convert to PNG"

Create Key HKEY_CLASSES_ROOT\SystemFileAssociations\.pdf\shell\pdf2png\command give the (Default) value data of ""%ProgramFiles%\pdf2png\pdf2png.bat" "%1"" Change the file path if location of bat file is different.

# Step 6 (Pray)
Right click on a PDF file
Click the context menu you've added (if it's there, it not Stack Overflow)
