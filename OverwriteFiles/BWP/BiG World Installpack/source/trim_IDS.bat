:: DO NOT USE TRIMRIGHT FOR FILES WITH ) or ' IN THE LINE BECAUSE THEY WOULD BE CUT OFF!!
:: Do not use this file for the KIT.IDS because it would cut off all exclamation marks (!) from the strings!

setlocal

@echo off & setlocal enabledelayedexpansion

set "Bak=.bak" 
set /a LineNo=0

FOR %%i IN (.\override\ANIMATE.IDS .\override\ANISND.IDS .\override\Fireball.IDS .\override\General.IDS .\override\SNDSLOT.IDS .\override\State.IDS .\override\stats.IDS .\override\spell.IDS) DO (
    echo  next file
    If exist %%i set "file=%%i" & call :run
) 

:run
move "%file%" "%file%%Bak%" 
copy nul "%file%">nul 
for /f "usebackq delims=" %%i in ("%file%%Bak%") do set "line=%%i" & call:trim line & call :ProcessLine
echo validate line %LineNo% ...
del "%file%%Bak%"
goto :eof 

:ProcessLine 
set /a LineNo+=1
findstr /b /c:"%line:~,85%" "%file%">nul || >>"%file%" echo %line% 

goto :eof


:trimLeft -- trim leading spaces
:         -- %~1: variable reference, string to be trimmed
for /f "tokens=* delims= " %%a in ("!%~1!") do set %~1=%%a
GOTO:EOF


:trimRight -- trim trailing spaces
:          -- %~1: variable reference, string to be trimmed
SETLOCAL
set s=!%~1!
:trimRight_LOOP
::if "%s:~-1%"==" " set s=%s:~0,-1%&goto:trimRight_LOOP

if "%s:~-1%"==" " set s=%s:~0,-1%&goto:trimRight_LOOP

(ENDLOCAL & REM.-- RETURN VALUES
    IF "%~1" NEQ "" SET %~1=%s%
)
GOTO:EOF


:trim -- trim leading and trailing spaces
:     -- %~1: variable reference, string to be trimmed
call:trimLeft %~1
call:trimRight %~1
GOTO:EOF