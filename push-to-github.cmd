@echo off
title Push DriveEase to GitHub
cd /d "%~dp0"

echo ========================================================
echo   Pushing DriveEase to GitHub
echo   Repository: https://github.com/SHAIKCHINNAJANU/DRIVEEASE.git
echo ========================================================
echo.
echo If you have a GitHub Personal Access Token (starts with ghp_):
set /p TOKEN="Paste your GitHub Token (or press Enter for standard login): "
echo.

if "%TOKEN%"=="" (
    "C:\Program Files\Git\cmd\git.exe" push -u origin main
) else (
    "C:\Program Files\Git\cmd\git.exe" push https://%TOKEN%@github.com/SHAIKCHINNAJANU/DRIVEEASE.git main
)

echo.
echo ========================================================
if %ERRORLEVEL% EQU 0 (
    echo   [SUCCESS] Code pushed to GitHub successfully!
) else (
    echo   [FAILED] Push failed. Check your token or permissions.
)
echo ========================================================
echo.
pause
