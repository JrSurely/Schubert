
set project1=%userprofile%\.nuget
set project2=%localappdata%\nuget
echo "������ NUGET ���棬���޸���������ʧ�ܴ���"

:delete
rd /s/Q %project1%\packages
rd /s/Q %project2%\Cache
echo.

:exit
set /p input=������ɣ���������˳���