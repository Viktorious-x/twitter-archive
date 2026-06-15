@echo off
setlocal enabledelayedexpansion

:: Slicing off exactly 20 characters (19 digits + 1 hyphen)
set /a charsToDelete=20

cd /d "%~dp0"
for %%f in (*.*) do (
    if not "%%f"=="clean.bat" (
        set "fname=%%f"
        set "newname=!fname:~20!"
        if not "!newname!"=="" (
            ren "%%f" "!newname!"
        )
    )
)
echo All prefixes successfully removed!
pause
