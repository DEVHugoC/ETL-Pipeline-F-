#!/bin/bash

# Ruta origen dentro del contenedor
ORIGEN="/var/jenkins_home/RESULTADO/bd_Ordenes_de_Compra.db"

# Ruta destino dentro del contenedor (a volumen compartido)
DESTINO="/var/jenkins_home/PROY_PY_CERTUS/bd_Ordenes_de_Compra.db"

echo "Copiando base de datos dentro del contenedor a volumen compartido..."

cp "$ORIGEN" "$DESTINO"

if [ $? -eq 0 ]; then
    echo "Base de datos copiada con éxito al volumen compartido."
else
    echo "Error al copiar la base de datos."
    exit 1
fi
