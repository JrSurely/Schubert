@echo off  
echo ����Ŀ¼   %~dp0

if {%1} neq {} echo �汾��׺�� %~1

:clear
set WHAT_SHOULD_BE_DELETED=bin 
set IN_LOOP=no 

:del
for /r %~dp0 %%a in (!WHAT_SHOULD_BE_DELETED!) do (  
  if exist %%a (   
  rd /s /q "%%a"  
 )  
)
if %IN_LOOP%  == yes goto build

set WHAT_SHOULD_BE_DELETED=obj 
set IN_LOOP=yes 
goto del


:build

set sln=%~dp0Schubert.sln

echo ������ɣ���ʼ����ԭ
@REM dotnet restore --no-cache
dotnet restore --no-cache "%sln%"

echo ����ԭ��ɣ���ʼ����

dotnet build --no-restore -c Release "%sln%"

:pack
echo ����ԭ��ɣ���ʼ���
if {%1} neq {} (
	  dotnet pack "%sln%" -c Release --no-restore --no-build --version-suffix %~1 --output ..\..\..\Output
	  ) else (
	  echo ��� %sln%
	  dotnet pack "%sln%" -c Release --no-restore --no-build --output ..\..\..\Output
	  )

:quit 
