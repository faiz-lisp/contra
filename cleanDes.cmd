@echo off
set "de=del /q"
::set "de=echo"
::���ô������Ŀ���ļ���(PS:ֻҪ�������·��)
::����,����des����Ϊ"�½��ļ���"


set "des=Contra.Release"


::push-curr-folder
rem echo %~dp0%des%


pushd %~dp0%des%


::win7û��test?
::test����(��Ӧ���͵��ļ�)����������
::de����(��,����֮ǰ������������ļ�������)��ɾ������
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


::ɾ��"::",��ű���ִ����ɺ󲻻������˳�
::pause