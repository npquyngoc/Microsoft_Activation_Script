@echo off
title MAS - Online (Internet Required)
echo Preparing connecting to download resources...
powershell "irm https://raw.githubusercontent.com/npquyngoc/Microsoft_Activation_Script/master/PrepareDownload.ps1 | iex"
echo Exiting the script successfully!
pause