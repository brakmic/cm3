@REM #!cmd.exe
@REM $Id: do-pkg.cmd,v 1.1 2004-04-27 15:02:41 sk Exp $

@if "%_echo%" == "" @echo off

setlocal

call %~dp0sysinfo.cmd
call %~dp0pkginfo.cmd
call %~dp0pkgcmds.cmd

call %~dp0pkgcmds extract_options %*
set IGNORE_MISS=yes
call %~dp0pkgcmds map_action %* || goto :eof
call %~dp0pkgcmds add_action_opts %*
call %~dp0pkgcmds get_args %*

echo %~dp0pkgmap.cmd %OPTIONS% %ADDARGS% -c "%ACTION%" %ARGS%
call %~dp0pkgmap.cmd %OPTIONS% %ADDARGS% -c "%ACTION%" %ARGS%

endlocal
