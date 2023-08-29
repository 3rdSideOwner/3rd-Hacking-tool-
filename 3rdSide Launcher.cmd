@echo off 
title 3rdSide / proggramed by abrissy - https://discord.gg/nM8raQ3Syb / 
cd 3rdSideAssets
chcp 65001
cls
pushd %~dp0
cd 3rdSideAssets 
type logo.txt 
echo. 
echo 3rdSide loading... 
timeout 2 >nul 
start 3rd.bat 
exit