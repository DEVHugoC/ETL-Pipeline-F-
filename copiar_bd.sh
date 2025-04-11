#!/bin/bash

# Nombre del contenedor
CONTENEDOR="jenkins"

# Ruta origen dentro del contenedor
RUTA_ORIGEN="/var/jenkins_home/RESULTADO/bd_Ordenes_de_Compra.db"

# Ruta destino dentro del contenedor, pero apuntando a la carpeta montada desde tu máquina
RUTA_DESTINO="/var/jenkins_home/PROY_PY_CERTUS/bd_Ordenes_de_Compra.db"

echo "Copiando base de datos al volumen compartido..."

docker cp "$CONTENEDOR:$RUTA_ORIGEN" "$RUTA_DESTINO"

if [ $? -eq 0 ]; then
    echo "Base de datos copiada con éxito al volumen compartido."
else
    echo "Error al copiar la base de datos."
    exit 1
fi
