@echo off
mode con: COLS=75 LINES=25
title AlgoraPrompt
:: develped by Saad Anouar
set /a time = 5
cls             
:animation
ping localhost -n 2 >nul
set /a time=%time%-1
cls
color 03
echo. & echo. & echo. & echo. & echo. & echo. & echo.
set /a rnd=%random% %% 10 + 1 
echo      %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%   %rnd%%rnd%         %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%     %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%   %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%    %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%  
echo     %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%        %rnd%%rnd%    %rnd%%rnd%   %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd% 
echo     %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%        %rnd%%rnd%         %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  
echo     %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%  %rnd%%rnd%        %rnd%%rnd%  %rnd%%rnd%%rnd%%rnd%   %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%   %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%  
echo     %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%        %rnd%%rnd%    %rnd%%rnd%   %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  
echo     %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%        %rnd%%rnd%    %rnd%%rnd%   %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  
echo     %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%   %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%     %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%   %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd% 
echo 																	P   R   O   M   P   T                                                        
echo. & echo. & echo. & echo. & echo. & echo. & echo.

%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor yellow `t` `t`  ~~ PROGRAM WILL BE STARTING AT : %time% ~~
if %time%== 0 goto main
goto animation
:main
cls
echo.
echo ---------------------------------------------------------------------------
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red `t` `t`  Your file will be created At Desktop
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red  Please Input the Min and the Max Numeric values To start Making file 
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor yellow `t` `t` `t`  ~~  Accept Only Degital  ~~
echo ---------------------------------------------------------------------------
echo.
set /p filename= ^>^> Enter File name :
:corp
cls
echo.
set /p Mindegit= ^>^> enter the Minimun number :
set /a min=%Mindegit%

set /p Maxdegit= ^>^> enter the Maximun number :
set /a max=%Maxdegit%

if not %min%==%Mindegit% goto wrong 
if not %max%==%Maxdegit% goto wrong
for /L %%j in (%min%,1,%max%) do echo %%j>>C:\Users\Public\Desktop\%filename%.txt
:exept
cls
echo. & echo. & echo. & echo. & echo. & echo. & echo.
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor green `t` `t` FILE CREATED SUCCESSFULLY  
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor green `t` `t` Program developed By : SAAD ANOUAR                  
echo. & echo. & echo. 
echo 							[H] Home 		
echo 							[?] About		
echo 							[Q] Exit
echo.
set /p input=^>^>: 
if %input%==q goto Exit
if %input%==h goto main
if %input%==? goto about
goto exept

:wrong  
cls   
echo.
echo ACCEPT ONLY NUMERIC VALUE 
timeout /T 2 >nul
goto corp  

:about
echo about here 
 
                                                      