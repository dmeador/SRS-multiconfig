@echo off

if "%1"=="" (
echo USAGE: %0  [param]
echo 	[param] = A10 or F16, etc, etc
echo 	example1:  %0 A10
echo 	example2:  %0 F16
echo 	if the desired config does not exist, 
echo 	it will ask to create it from current config, 
echo 	answer Y or N, and press return
echo 	 
echo 	if the desired config does exists, it will copy the config to 
echo 	the current client.cfg, and execute the SR-ClientRadio.exe
goto :done
)


set config=%1
REM echo config=%config%
set configfile=client.cfg.%config%
IF EXIST "%configfile%" (
  REM Do one thing
  echo file "%configfile%" exists
  goto :copyconfig
) ELSE (
  REM Do another thing
  echo file "%configfile%" does not exist
  goto :createconfig
)
goto :done

:createconfig
echo "Do you want to create configfile "%config%"?
set cfgcreate=0
set "UserChoice=n" REM default value
set /P UserChoice="Type [Y/n]: "
echo got input "%UserChoice%" 
if "%UserChoice%"=="Y" (
	set cfgcreate=1
) 
if "%UserChoice%"=="y" (
	set cfgcreate=1
)

echo cfgcreate=%cfgcreate%
if "%cfgcreate%"=="1" (
	echo Creating client config for %config% 
	copy client.cfg  client.cfg.%config%
	echo done.
)
goto :done

:copyconfig
echo client.cfg.%config% to client.cfg
copy client.cfg.%config% client.cfg 
start SR-ClientRadio.exe
goto :done

:done
