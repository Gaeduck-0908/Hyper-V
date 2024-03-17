@echo off
set /p choice="옵션을 선택하세요 (1: Hyper-V 비활성화, 2: Hyper-V 자동): "
if %choice%==1 (
    bcdedit /set hypervisorlaunchtype off
) else if %choice%==2 (
    bcdedit /set hypervisorlaunchtype auto
) else (
    echo 잘못된 입력입니다.
    goto :eof
)

echo 설정을 적용하고 3초 후에 컴퓨터를 재시작합니다...
timeout /t 3 /nobreak > NUL
shutdown /r /t 0
