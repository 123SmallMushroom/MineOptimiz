cmd rmdir /s .github
cmd rmdir /s .git
cmd del README.md
cmd cd /d overrides
cmd del server.dat
cmd del wallhaven-e7651w_1600x1024.png
cmd cd /d config
cmd rmdir /s fancymenu
cmd cd ..
cd /d ..
cd ..
powershell Compress-Archive -Path .\ -DestinationPath modpack.zip
cmd ren modpack.zip modpack.mrpack
