@echo off
echo 在使用此程序之前请不要修改代码库文件夹的名字！
echo 你需要哪一个版本？
echo 1 Standard
echo 2 Lite
echo 3 Standalone
set /p edition=
if "%edition%"=="3" (
  echo 抱歉，该版本暂不支持打包
  pause
  exit
)
cd ..
xcopy .\Tiao-s-Modpack-For-Tiao-s-Server %temp%\backup-modpack /E /H /C /I
cd /d %temp%\backup-modpack
if "%edition%"=="1" (
  del Build.bat
  del modrinth.index.lite.json
  del README.md
  rd /s /q .github
  cd overrides
  rd /s /q mods-lite
  rename h.txt options.txt
  cd ..
)
if "%edition%"=="2" (
  del Build.bat
  del modrinth.index.json
  rename modrinth.index.lite.json modrinth.index.json
  del README.md
  rd /s /q .github
  cd overrides
  rd /s /q mods
  rename mods-lite mods
  rename h.txt options.txt
  rd /s /q fancymenu_data
  rd /s /q XaeroWaypoints
  rd /s /q XaeroWorldMap
  del servers.dat
  del wallhaven-e7651w_1600x1024.png
  del hhh.jpg
  del joinserver.txt
  del start.png
  del startclick.png
  cd config
  rd /s /q fancymenu
  cd ..
  cd ..
)
cd ..
echo 请输入整合包保存路径（不要带路径末尾的斜杠！）
set /p savemodpack=
powershell Compress-Archive -Path ".\backup-modpack\*" -DestinationPath %savemodpack%\modpack.zip
rd /s /q backup-modpack
echo 请输入整合包名称
set /p modpackname=
rename %savemodpack%\modpack.zip %modpackname%.mrpack
echo 完成！
pause