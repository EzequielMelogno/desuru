#!/bin/bash

read -p "Ingrese la nueva direccion del servidor de respaldo: " direccion
echo "$direccion" > configuracion/direccionServidorRespaldo.conf
if [ "$?" != "0" ]; then
    echo "Se ha producido un error."
    read -p "Aplaste ENTER para volver."
    echo "[X] `date +'%F %T'`: Definir direccion servidor de respaldo" >> "`cat configuracion/ubicacionLog.conf`/audit.log"
else
    echo "[O] `date +'%F %T'`: Definir direccion servidor de respaldo" >> "`cat configuracion/ubicacionLog.conf`/audit.log"
fi
