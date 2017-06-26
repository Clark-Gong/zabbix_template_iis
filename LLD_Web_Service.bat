@echo off
SETLOCAL ENABLEDELAYEDEXPANSION 
echo {
echo     "data":[
for /F "tokens=* delims= " %%i IN ('typeperf -qx^|find "Web Service"^|find "Current Connections"') DO (
    set j=%%i
    for /F "tokens=1 delims=\" %%k in ("%%i") DO (
    echo         {
    echo             "{#WEB_SERVICE}": "%%k"
    echo         },
    )
)
echo         {
echo             "{#WEB_SERVICE}": "none"
echo         }
echo     ]
echo }