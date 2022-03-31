@echo off
color 0F
title Servidor de Gunbound (Feito por Thalles Tutoriais) - Youtube.com/VideosTutoriais
@setlocal enableextensions
@cd /d "%~dp0"
test&cls
taskkill /f /im python.exe
py Scripts.py
pause