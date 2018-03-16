@echo off
set "de=del /q"
::set "de=echo"
::设置待清理的目标文件夹(PS:只要输入相对路径)
::举例,变量des设置为"新建文件夹"


set "des=Contra.Release"


::push-curr-folder
rem echo %~dp0%des%


pushd %~dp0%des%


::win7没有test?
::test部分(对应类型的文件)作保留处理
::de部分(即,除了之前作保留处理的文件类型外)作删除处理
for /R %%s in (*) do (


		rem will be reserved
	if "%%~xs" equ ".exe" (	
		test
	) else if "%%~xs" equ ".cmd" (
		test
	) else if "%%~xs" equ ".u3" (
		test
	) else if "%%~xs" equ ".txt" (
		test
	) else if "%%~xs" equ ".dll" (
		test
	) else if "%%~xs" equ ".dat" (
		test
	) else if "%%~xs" equ ".ini" (
		test
	) else if "%%~xs" equ "" (
		test		
	) else (	
	
	
		rem echo %%s		
		rem will be deleted
		%de% "%%~nxs" 2>nul
		
		
	)	
	rem echo %%s
)
echo ..done


popd


::删除"::",则脚本在执行完成后不会马上退出
::pause