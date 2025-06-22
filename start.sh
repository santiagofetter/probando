#!/bin/bash
# Detener procesos previos

# Iniciar Minecraft
java -Xmx4G -jar server.jar nogui

# limpia el plait.log en espera xdd

# Iniciar Playit en segundo plano
nohup ./playit-linux-amd64 > playit_final"espero".log 2>&1 &