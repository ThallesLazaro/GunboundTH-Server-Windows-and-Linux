#!/usr/bin/env
echo "=============================================================================="
echo "Servidor de Gunbound (Feito por Thalles Tutoriais) - Youtube.com/VideosTutoriais"
echo "=============================================================================="
echo " Ligando o servidor de Gunbound..."
echo "=============================================================================="
killall -9 python3
nohup python3 Scripts.py >/dev/null 2>&1 &