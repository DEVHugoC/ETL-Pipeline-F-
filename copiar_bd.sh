#!/bin/bash

# Nombre del contenedor
CONTENEDOR="jenkins"

# Ruta dentro del contenedor
RUTA_ORIGEN="/var/jenkins_home/workspace/ProyectoFinal/bd_Ordenes_de_Compra.db"

# Ruta destino en tu máquina local
RUTA_DESTINO="/c/Users/Intel/Desktop/RESULTADO/bd_Ordenes_de_Compra.db"

# Copiar archivo
docker cp "$CONTENEDOR:$RUTA_ORIGEN" "$RUTA_DESTINO"
