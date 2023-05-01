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
powershell Compress-Archive -Path Tiao-s-Modpack-For-Tiao-s-Server -DestinationPath v1.19.4-DEV-${{ steps.date.outputs.date }}-lite.zip
cmd ren v1.19.4-DEV-${{ steps.date.outputs.date }}-lite.zip v1.19.4-DEV-${{ steps.date.outputs.date }}-lite.mrpack
