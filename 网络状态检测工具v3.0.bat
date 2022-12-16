@echo off
title 网络状态检测工具v3.0
color b
echo ┌────────────┐
echo │网络状态检测工具  V3.0  │
echo │       正在启动         │
echo └────────────┘
:menu
echo.
echo 当前时间%date% %time%
echo.
echo ┌─────────────────────────┐
echo │功能菜单                                          │
echo │1.本机电脑检测                                    │
echo │2.DNS（域名解析)检测                              │
echo │3.DNS（域名解析)修复                              │
echo │4.导出使用记录                                    │
echo │5.功能说明                                        │
echo │6.关闭该程序                                      │
echo │7.清理使用记录（其实关闭再打开也会清理）          │
echo └─────────────────────────┘
echo.
set /p a=请在右边输入数字并回车:
echo 选择了 %a%]
if %a%==1 goto 1
if %a%==2 goto 2
if %a%==3 goto 3
if %a%==4 goto 4
if %a%==5 goto 5
if %a%==6 goto 6
if %a%==7 goto 7

:1
echo.
echo ─────────────────────────
echo.	
ping 127.0.0.1 -n 10
echo.
echo 检测完成
echo.
echo ─────────────────────────
echo.
goto menu

:2
echo.
echo ─────────────────────────
echo.	
ping www.baidu.com -n 10
echo.
echo 检测完成
echo 如果无法解析出结果，请按3来进行修复 
echo.
echo ─────────────────────────
echo.
goto menu

:3
echo.
echo ─────────────────────────
echo.
ipconfig /flushdns
echo.
echo 修复完成
echo.
echo ─────────────────────────
echo.
goto menu

:4
echo.
echo ─────────────────────────
echo.
echo 失败！功能未开发
echo.
echo ─────────────────────────
echo.
goto menu

:5
echo.
echo ─────────────────────────
echo.
echo 失败！功能未开发
echo.
echo ─────────────────────────
echo.
goto menu

:6
echo.
echo ─────────────────────────
echo.
echo 正在关闭
exit
echo.
echo ─────────────────────────
echo.
goto menu

:7
echo.
echo ─────────────────────────
echo.
echo 正在清理
echo.
echo ─────────────────────────
echo.
cls
echo.
echo ─────────────────────────
echo.
echo 清理完毕
echo.
echo ─────────────────────────
echo.
goto menu

:8
:7
echo.
echo ─────────────────────────
echo.