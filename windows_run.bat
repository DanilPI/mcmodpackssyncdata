:: Working in command line for syncing files/folders in modpack folder with .minecraft folder. 


@echo off 
title MCModPacksSyncData v0.1 Beta
echo There will be install links to connect to .minecraft folder:
dir ..\
pause
echo Starting syncing folders and files in your modpack folder with .minecraft folder...
:: Sync standard files (userdata):
mklink ..\usernamecache.json %APPDATA%\.minecraft\usernamecache.json
mklink ..\usercahe.json %APPDATA%\.minecraft\usercache.json
mklink ..\options.txt %APPDATA%\.minecraft\options.txt
mklink ..\servers.dat %APPDATA%\.minecraft\servers.dat
mklink ..\servers.dat_old %APPDATA%\.minecraft\servers.dat_old
mklink ..\realms_persistence.json %APPDATA%\.minecraft\realms_persistence.json

:: Sync standard folders (userdata)
:: /D if your folder is located in another disk, BUT THIS SCRIPT WILL BE NEED RUNNING AS ADMINISTRATOR!!!
mklink /J ..\saves %APPDATA%\.minecraft\saves
mklink /J ..\downlods %APPDATA%\.minecraft\downloads
mklink /J ..\logs %APPDATA%\.minecraft\logs
mklink /J ..\resourcepacks %APPDATA%\.minecraft\resourcepacks
mklink /J ..\screenshots %APPDATA%\.minecraft\screenshots

:: Mods Data:
:: Config (add :: for disable syncing file optionsof.txt)
::
mklink /J ..\config %APPDATA%\.minecraft\config
mklink /J ..\data %APPDATA%\.minecraft\data

:: Optifine Options (add :: for disable syncing file optionsof.txt)
:: 
mklink ..\optionsof.txt %APPDATA%\.minecraft\optionsof.txt

:: Shaderpacks: (add :: for disable syncing)
:: 
mklink /J ..\shaderpacks %APPDATA%\.minecraft\shaderpacks


:: Add some folder (if you need) with mklink command....
:: (mklink /J (/D if your folder is located in another disk, BUT THIS SCRIPT WILL BE NEED RUNNING AS ADMINISTRATOR!!!)... 
::... ..\folder %APPDATA%\folder)
:: Or add some files (if you need) with mklink command. (mklink ..\(file name or directory name with file name).(file))
:: Custom Folders to sync:



echo Syncing folders and files in your modpack folder with .minecraft folder is complited.
echo Thanks for using this utility. ❤️❤️❤️
pause