@REM  Name: �ݹ�ɾ��ָ����Ŀ¼����Ѵ��ļ�������ϣ��ִ�е��Ǹ�Ŀ¼   
@echo off  
setlocal enabledelayedexpansion  
  
@REM ��������ɾ����Ŀ¼  
set WHAT_SHOULD_BE_DELETED=bin 
set IN_LOOP=no 

:del
for /r %~dp0 %%a in (!WHAT_SHOULD_BE_DELETED!) do (  
  if exist %%a (  
  echo "ɾ��"%%a   
  rd /s /q "%%a"  
 )  
)
if %IN_LOOP%  == yes goto exit

set WHAT_SHOULD_BE_DELETED=obj 
set IN_LOOP=yes 
goto del

:exit
set /p input=��ɣ���������˳���