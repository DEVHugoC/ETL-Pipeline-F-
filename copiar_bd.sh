#!/bin/bash

# Nombre del contenedor
CONTENEDOR="jenkins"

# Ruta origen dentro del contenedor
RUTA_ORIGEN="/var/jenkins_home/RESULTADO/bd_Ordenes_de_Compra.db"

# Ruta destino en tu máquina local (en formato compatible con Bash)
RUTA_DESTINO="/c/Users/Intel/Desktop/RESULTADO/bd_Ordenes_de_Compra.db"

echo "Copiando base de datos a la máquina local..."

docker cp "$CONTENEDOR:$RUTA_ORIGEN" "$RUTA_DESTINO"

if [ $? -eq 0 ]; then
    echo "Base de datos copiada con éxito."
else
    echo "Error al copiar la base de datos."
    exit 1
fi
