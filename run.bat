@echo off
if "%1"=="" (
    set /p destination="[+] E n t e r   t h e   d e s t  i n a t i o n   o f   t h e   p r o g r a m : "
    if "%destination%"=="set" (
        set /p dynamic_destination="[+] E N T E R    T H E    D Y N A M I C    D E S T I N A T I O N : "
        set destination=%dynamic_destination%
    )
) else (
    set destination=%1
)
pythonw %destination%
echo [+] C l o s i n g   C o m m a n d   P r o m p t [ERROR 1] . . .
ping -n 3 127.0.0.1 > nul
exit
