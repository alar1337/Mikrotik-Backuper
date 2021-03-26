@echo off
setlocal EnableExtensions EnableDelayedExpansion

set log_folder=logs
set log_file="!log_folder!/log_!date:~0,-9!!date:~6,-5!!date:~10,-1!_!time:~0,-9!!time:~3,-6!!time:~6,-3!.txt"
set device_data_folder=device_data
set backup_data_folder=backup_data

echo [INFO] Checking for basic directories...
if exist "!log_folder!" (
	echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] log_folder Found >>!log_file!
	echo [INFO] log_folder Found
	if exist "!device_data_folder!" (
		echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] device_data_folder Found >>!log_file!
		echo [INFO] device_data_folder Found
		if exist "!backup_data_folder!" (
			echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] backup_data_folder Found >>!log_file!
			echo [INFO] backup_data_folder Found
			echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Basic directories OK >>!log_file!
			echo [INFO] Basic directories OK
		) else (
			echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [WARRNING] backup_data_folder Not Found >>!log_file!
			echo [WARRNING] backup_data_folder Not Found
			echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Creating backup_data_folder... >>!log_file!
			echo [INFO] Creating backup_data_folder...
			md !backup_data_folder!
			if exist "!backup_data_folder!" (
				echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] backup_data_folder Created Successfully >>!log_file!
				echo [INFO] backup_data_folder Created Successfully
				echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Basic directories OK >>!log_file!
				echo [INFO] Basic directories OK
			) else (
				echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [ERROR] backup_data_folder Cannot be created >>!log_file!
				echo [ERROR] backup_data_folder Cannot be created
				goto end
			)
		)
	) else (
		echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [WARRNING] device_data_folder Not Found >>!log_file!
		echo [WARRNING] device_data_folder Not Found
		echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Creating device_data_folder... >>!log_file!
		echo [INFO] Creating device_data_folder...
		md !device_data_folder!
		if exist "!device_data_folder!" (
			echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] device_data_folder Created Successfully >>!log_file!
			echo [INFO] device_data_folder Created Successfully, Place there your Dude exported CSV files for automation
			if exist "!backup_data_folder!" (
				echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] backup_data_folder Found >>!log_file!
				echo [INFO] backup_data_folder Found
				echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Basic directories OK >>!log_file!
				echo [INFO] Basic directories OK
			) else (
				echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [WARRNING] backup_data_folder Not Found >>!log_file!
				echo [WARRNING] backup_data_folder Not Found
				echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Creating backup_data_folder... >>!log_file!
				echo [INFO] Creating backup_data_folder...
				md !backup_data_folder!
				if exist "!backup_data_folder!" (
					echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] backup_data_folder Created Successfully >>!log_file!
					echo [INFO] backup_data_folder Created Successfully
					echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Basic directories OK >>!log_file!
					echo [INFO] Basic directories OK
				) else (
					echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [ERROR] backup_data_folder Cannot be created >>!log_file!
					echo [ERROR] backup_data_folder Cannot be created
					goto end
				)
			)
		) else (
			echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [ERROR] device_data_folder Cannot be created >>!log_file!
			echo [ERROR] device_data_folder Cannot be created
			goto end
		)
	)
) else (
	echo [WARRNING] log_folder Not Found
	echo [INFO] Creating log_folder...
	md !log_folder!
	if exist "!log_folder!" (
		echo [INFO] log_folder Created Successfully
			if exist "!device_data_folder!" (
				echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] device_data_folder Found >>!log_file!
				echo [INFO] device_data_folder Found
				if exist "!backup_data_folder!" (
					echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] backup_data_folder Found >>!log_file!
					echo [INFO] backup_data_folder Found
					echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Basic directories OK >>!log_file!
					echo [INFO] Basic directories OK
				) else (
					echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [WARRNING] backup_data_folder Not Found >>!log_file!
					echo [WARRNING] backup_data_folder Not Found
					echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Creating backup_data_folder... >>!log_file!
					echo [INFO] Creating backup_data_folder...
					md !backup_data_folder!
					if exist "!backup_data_folder!" (
						echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] backup_data_folder Created Successfully >>!log_file!
						echo [INFO] backup_data_folder Created Successfully
						echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Basic directories OK >>!log_file!
						echo [INFO] Basic directories OK
					) else (
						echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [ERROR] backup_data_folder Cannot be created >>!log_file!
						echo [ERROR] backup_data_folder Cannot be created
						goto end
					)
				)
			) else (
				echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [WARRNING] device_data_folder Not Found >>!log_file!
				echo [WARRNING] device_data_folder Not Found
				echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Creating device_data_folder... >>!log_file!
				echo [INFO] Creating device_data_folder...
				md !device_data_folder!
				if exist "!device_data_folder!" (
					echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] device_data_folder Created Successfully >>!log_file!
					echo [INFO] device_data_folder Created Successfully, Place there your Dude exported CSV files for automation
					if exist "!backup_data_folder!" (
						echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] backup_data_folder Found >>!log_file!
						echo [INFO] backup_data_folder Found
						echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Basic directories OK >>!log_file!
						echo [INFO] Basic directories OK
					) else (
						echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [WARRNING] backup_data_folder Not Found >>!log_file!
						echo [WARRNING] backup_data_folder Not Found
						echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Creating backup_data_folder... >>!log_file!
						echo [INFO] Creating backup_data_folder...
						md !backup_data_folder!
						if exist "!backup_data_folder!" (
							echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] backup_data_folder Created Successfully >>!log_file!
							echo [INFO] backup_data_folder Created Successfully
							echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Basic directories OK >>!log_file!
							echo [INFO] Basic directories OK
						) else (
							echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [ERROR] backup_data_folder Cannot be created >>!log_file!
							echo [ERROR] backup_data_folder Cannot be created
							goto end
						)
					)
				) else (
					echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [ERROR] device_data_folder Cannot be created >>!log_file!
					echo [ERROR] device_data_folder Cannot be created
					goto end
				)
			)
	) else (
		echo [ERROR] log_folder Cannot be created
		goto end
	)
)

choice /t 10 /c ynr /cs /d r /m "Do you want use user input (Y/N)?"
if errorlevel 3 call goto automation
if errorlevel 2 call goto automation
if errorlevel 1 call goto user_input
goto end

:user_input
	echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] User input selected >>!log_file!
	echo [INFO] User input selected
	echo user_input
	goto :end

:automation
echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Data validation starting... !file_var! >>!log_file!
echo [INFO] Data validation starting...
for /r %%f in (!device_data_folder!\*.*) do (
	set file_availability=1
	set file_var=!device_data_folder!/%%~nf%%~xf
	set "count=1"
	if "%%~xf"==".csv" (
	echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] device_data_files Found, Checking !file_var! >>!log_file!
	echo [INFO] device_data_files Found, Checking !file_var!
		for /f "skip=1 eol=# tokens=1-3 delims=," %%a in (%%f) do (
			set ip_var=%%c
			for %%i in (%%c) do (
				set /a count += 1
				rem call with a variable to get return value
				call :validateIP %%~i ret 
				rem call with or without variable to get errorlevel
				if "!ret!"=="1" (
					echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [ERROR] In file !file_var! on line !count! there is a invalid IP !ip_var! >>!log_file!
					echo [ERROR] In file !file_var! on line !count! there is a invalid IP !ip_var!
					goto end
				)
			)
		)
	) else (
		echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [ERROR] Invalid device_data_file !file_var! >>!log_file!
		echo [ERROR] Invalid device_data_file !file_var!
		goto end
	)
)
if "!file_availability!"=="1" (
	echo Files
) else (
	echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [ERROR] No device_data_file found >>!log_file!
	echo [ERROR] No device_data_file found
	goto end
)

:end
echo [!date:~0,-8!!date:~6,-4!!date:~10,-1!_!time:~0,-8!!time:~3,-5!!time:~6,-3!] [INFO] Exiting... >>!log_file!
echo [INFO] Exiting...
pause
endlocal
goto :eof

:validateIP ipAddress [returnVariable]
    rem prepare environment
    setlocal 

    rem asume failure in tests : 0=pass 1=fail : same for errorlevel
    set "_return=1"

    rem test if address conforms to ip address structure
    echo %~1^| findstr /b /e /r "[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*" >nul

    rem if it conforms to structure, test each octet for rage values
    if not errorlevel 1 for /f "tokens=1-4 delims=." %%a in ("%~1") do (
        if %%a gtr 0 if %%a lss 255 if %%b leq 255 if %%c leq 255 if %%d gtr 0 if %%d leq 254 set "_return=0"
    )

:endValidateIP
    rem clean and return data/errorlevel to caller
    endlocal & ( if not "%~2"=="" set "%~2=%_return%" ) & exit /b %_return%

