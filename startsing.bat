@echo off
:: 杀掉占用 7890 端口的进程
powershell -Command "Stop-Process -Id (Get-NetTCPConnection -LocalPort 7890).OwningProcess[0] -Force"

:: 启动 sing-box
.\sing-box.exe run -c "config.json"
