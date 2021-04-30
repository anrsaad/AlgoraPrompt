@echo off
mode con: COLS=75 LINES=25
title AlgoraPrompt
:: developed by Saad Anouar
:: i creat a timer for animation here and i give him a variable with name time 
set /a time = 3
set TAB=         
cls
:: the animation erea show the logo of program and dispared after the value given on time variable get zero, so he start tehe countdown from 3
:animation
:: i use the ping command to get time less then  one second 
ping localhost -n 2 >nul
:: i reduce one every time the loop get started again to reach wero the the program jump to corp of program
set /a time=%time%-1
cls
:: changing the color of screen (you can use color /? command into msdos to get available color
color 03
echo. & echo. & echo. & echo. & echo. & echo. & echo.
:: this part of animation need more explain: i get a logo with ACSII from online website then i delete all characters and leave only this symbole "$"
:: after that i creat a variable with name rnd and make a random number of two degit, and i replace every "$" symbol with random variable "rnd" by replace otion in any editor
set /a rnd=%random% %% 10 + 1 
echo      %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%   %rnd%%rnd%         %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%     %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%   %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%    %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%  
echo     %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%        %rnd%%rnd%    %rnd%%rnd%   %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd% 
echo     %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%        %rnd%%rnd%         %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  
echo     %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%  %rnd%%rnd%        %rnd%%rnd%  %rnd%%rnd%%rnd%%rnd%   %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%   %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%  
echo     %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%        %rnd%%rnd%    %rnd%%rnd%   %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  
echo     %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%        %rnd%%rnd%    %rnd%%rnd%   %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd%  
echo     %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%%rnd%   %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%     %rnd%%rnd%%rnd%%rnd%%rnd%%rnd%   %rnd%%rnd%    %rnd%%rnd%  %rnd%%rnd%    %rnd%%rnd% 
echo                                                     P   R   O   M   P   T                                                        
echo. & echo. & echo. & echo. & echo. & echo. & echo.
:: i used the powershell command to colored a text on yellow and the `t` mean a tap 
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor yellow `t` `t`  ~~ PROGRAM WILL BE STARTING AT : %time% ~~
:: if the timer reach zero the program jump to main if not do more loop
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
:: i use the input variable " set /P" and name is : filename 
set /p filename=^>^>Enter File name :
:: make a condition if the name of file inputed by user already exist jump to message filefound if not program keep working
if exist C:\Users\Public\Desktop\%filename%.txt goto filefound

:corp
cls
echo.
:: now after colored message show up, the program ask user to enter two value to generate a wrodlist from minimum to maximum value 
set /p Mindegit= ^>^> enter the Minimun number :
set /a min=%Mindegit%

set /p Maxdegit= ^>^> enter the Maximun number :
set /a max=%Maxdegit%

:: if the user enter a characteres and non a degit the program compare it by numeric variable "set /a" then jump into a erreur message ask user to enter only numeric values
if not %min%==%Mindegit% goto wrong 
if not %max%==%Maxdegit% goto wrong
:: now its start making file and first thing do is write first line content name of file and date and developer name and second line a notification
echo File Name :%filename%.txt   Date : %DATE%   %TAB%%TAB% 'ALgora, developed by saad anouar'>C:\Users\Public\Desktop\%filename%.txt
echo      ## Delete this two line if you want use this wordlist on a generator Program  ##>>C:\Users\Public\Desktop\%filename%.txt 
:: a loop to start writing from minimun to maximun values into a file on desktop
for /L %%j in (%min%,1,%max%) do echo %%j>>C:\Users\Public\Desktop\%filename%.txt
:exept
:: message of successful show after the file created and some option like : help page or goto home page or exit the program
cls
echo. & echo. & echo. & echo. & echo. & echo. & echo.
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor green `t` `t` FILE CREATED SUCCESSFULLY  
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor green `t` `t` Program developed By : SAAD ANOUAR                  
echo. & echo. & echo. & echo.
echo %TAB%%TAB%%TAB%%TAB%%TAB%%TAB%[H] Home        
echo %TAB%%TAB%%TAB%%TAB%%TAB%%TAB%[?] About       
echo %TAB%%TAB%%TAB%%TAB%%TAB%%TAB%[Q] Exit
echo.
set /p input=^>^>: 
if %input%==q goto Exit
if %input%==h goto main
if %input%==? goto about
goto exept

:wrong  
cls   
echo. & echo. & echo.
echo %TAB%%TAB%       -------------------------
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red `t` `t` `t` ACCEPT ONLY NUMERIC VALUE
echo %TAB%%TAB%       ------------------------- 
Echo.
echo %TAB%%TAB%%TAB%        Try Again

echo. 
timeout /T 2 >nul
goto corp  

:about
cls
echo.
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Yellow `t` `t` `t` ALGORAPrompt
echo. & echo.
echo  #this program write by : SAAD Anouar
echo AlgoraPrompt used to generate Numeric wodlist between two given value 
echo then write it into file on your Desktop.
echo If you want use file.txt created on a generator program, delete the two 
echo first line.
echo If the file already existed a message show up to confirme crush or creat a new file
echo In inputed values, its not allowed to type a reversed  
echo (Exemple : Min=1000 to Max=100 )
echo You can started from a negative value (Exemple : Min=-20 to Max=10)
Echo. & echo. 
echo %TAB%%TAB%%TAB%%TAB% thank you for using AlgoraPrompt.
pause>nul
goto main

 
:filefound
cls
echo. & echo. & echo.
echo %TAB%%TAB%       -----------------------------
%windir%\system32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor Red `t` `t` `t` Found file with the same name
echo %TAB%%TAB%       -----------------------------
echo. & echo. & echo. & echo. & echo.
echo %TAB%[Y] crushed the exsiting file%TAB% [N] Creat a new File
echo. & echo.
set /p answer= ^>^>:
if %answer%==y goto corp
if %answer%==n goto main
goto filefound
pause>nul


                                    
