@REM  Name: �ݹ�ɾ��ָ����Ŀ¼����Ѵ��ļ�������ϣ��ִ�е��Ǹ�Ŀ¼   
@echo off  
setlocal enabledelayedexpansion  
  

set dir=%~dp0Output

echo Ҫ�����İ���
for /R %dir% %%f in (*.nupkg) do ( 
echo publish %%f
)


set /p input=ȷ�ϰ� y�� ȡ�����������

if /i not "%input%"=="y" goto exit

for /R %dir% %%f in (*.nupkg) do ( 
echo ��ʼ�ϴ� %%f
dotnet nuget push %%f -k oy2d3dtxn5whgyvozevajv2ewfchp57exab2wziy3bd7ji -s https://api.nuget.org/v3/index.json
)
set /p input=��ɣ���������˳���


:exit