#!/bin/bash

# Nombre del contenedor
CONTENEDOR="jenkins"

# Ruta origen dentro del contenedor
RUTA_ORIGEN="/var/jenkins_home/workspace/ProyectoFinal/bd_Ordenes_de_Compra.db"

# Ruta destino dentro del contenedor (una carpeta que existe)
RUTA_DESTINO="/var/jenkins_home/RESULTADO"

# Crear carpeta si no existe
mkdir -p "$RUTA_DESTINO"

# Copiar archivo dentro del contenedor
cp "$RUTA_ORIGEN" "$RUTA_DESTINO/bd_Ordenes_de_Compra.db"
