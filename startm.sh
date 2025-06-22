#!/bin/bash

# Configuración
MINECRAFT_JAR="server.jar"
JAVA_MEMORY="12G"

# Verificar si el archivo JAR existe
if [ ! -f "$MINECRAFT_JAR" ]; then
    echo "Error: No se encontró $MINECRAFT_JAR. ¿Estás en el directorio correcto?"
    exit 1
fi

# Iniciar Minecraft (en primer plano para ver logs en terminal)
java -Xmx"$JAVA_MEMORY" -jar "$MINECRAFT_JAR" nogui
echo "servidor de minecraft iniciado. ahora has en otra terminal: ./startp.sh"