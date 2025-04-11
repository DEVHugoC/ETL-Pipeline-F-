#!/bin/bash

# Nombre del contenedor
CONTENEDOR="jenkins"

# Ruta origen dentro del contenedor
RUTA_ORIGEN="/var/jenkins_home/workspace/ProyectoFinal/bd_Ordenes_de_Compra.db"

# Ruta destino dentro del contenedor (una carpeta que existe)
RUTA_DESTINO="/var/jenkins_home/RESULTADO"

# Copiar el archivo dentro del contenedor a la carpeta montada
echo "Copiando base de datos dentro del contenedor..."
cp "$RUTA_ORIGEN" "$RUTA_DESTINO/bd_Ordenes_de_Compra.db"

if [ $? -eq 0 ]; then
    echo "Base de datos copiada con éxito al volumen compartido."
else
    echo "Error al copiar la base de datos dentro del contenedor."
    exit 1
fi
