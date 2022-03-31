#!/usr/bin/env
echo "=============================================================================="
echo "Servidor de Gunbound (Feito por Thalles Tutoriais) - Youtube.com/VideosTutoriais"
echo "=============================================================================="
echo " Instalando Servidor de Gunbound..."
echo " Nesta etapa voce precisa de internet"
echo "=============================================================================="
apt-get update
apt-get install python3
apt-get install python3-pip
python3 -m pip install --upgrade
python3 -m pip install altgraph==0.16.1
python3 -m pip install future==0.17.1
python3 -m pip install macholib==1.11
python3 -m pip install pefile==2018.8.8
python3 -m pip install PyInstaller==3.4
python3 -m pip install pywin32-ctypes==0.2.0
python3 -m pip install pycryptodome
echo "=============================================================================="
echo " Servidor Instalado, para ligar execute o comando: sh Linux-Ligar.sh"
echo "=============================================================================="
