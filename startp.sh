#!/bin/bash

# Iniciar Playit en segundo plano y capturar la URL
nohup ./playit-linux-amd64 > playit.log 2>&1 &

# Esperar 5 segundos para que Playit genere la URL (ajusta si es necesario)
sleep 10

# Extraer la URL del archivo de log y mostrarla
PLAYIT_URL=$(grep -o "https://[a-zA-Z0-9.-]*\.gl\.joinmc\.link" playit.log | head -n 1)

if [ -z "$PLAYIT_URL" ]; then
    echo "Error: No se pudo obtener la ip de Playit. Revisa playit.log"
else
    echo ""
    echo "--------------------------------------------------"
    echo "¡Servidor listo! Conéctate usando:"
    echo "IP Pública:  $PLAYIT_URL"
    echo "IP Local:    127.0.0.1:25565"
    echo "--------------------------------------------------"
    echo ""
fi