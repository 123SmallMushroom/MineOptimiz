rmdir /s .github
rmdir /s .git
del README.md
cd /d overrides
del server.dat
del wallhaven-e7651w_1600x1024.png
cd /d config
rmdir /s fancymenu
cd ..
cd /d ..
cd ..
dir
powershell Compress-Archive -Path ..\Tiao-s-Modpack-For-Tiao-s-Server -DestinationPath modpack.zip
cmd ren modpack.zip modpack.mrpack
