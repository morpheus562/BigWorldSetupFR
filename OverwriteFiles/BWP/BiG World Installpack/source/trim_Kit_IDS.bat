:: DO NOT USE TRIMRIGHT FOR FILES WITH ) or ' IN THE LINE BECAUSE THEY WOULD BE CUT OFF!!
:: Use this file only for the KIT.IDS. It maintains the exclamation marks (!) from the strings but can not trim the spaces.

setlocal

@echo off & setlocal enabledelayedexpansion

set "Bak=.bak"
set /a LineNo=0

FOR %%i IN (.\override\Kit.IDS) DO (
    echo  next file
    If exist %%i set "file=%%i" & call :run
)
goto :EOF

:run
move "%file%" "%file%%Bak%"
copy nul "%file%">nul 
setlocal disabledelayedexpansion
for /f "usebackq delims=" %%i in ("%file%%Bak%") do set "line=%%i" & call :ProcessLine
endlocal
echo validate line %LineNo% ...
del "%file%%Bak%"
goto :eof

:ProcessLine
set /a LineNo+=1
findstr /b /c:"%line:~,85%" "%file%">nul || >>"%file%" echo %line% 

goto :eof