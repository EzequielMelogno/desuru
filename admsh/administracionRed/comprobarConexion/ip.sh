#!/bin/bash
read -p "Ingrese la direccion IP: " ipe
ping -c 4 $ipe
if [ "$?" != "0" ]; then
    echo "Se ha producido un error."
    read -p "Aplaste ENTER para volver."
    echo "[X] `date +'%F %T'`: Comprobar conexion a $ipe" >> "`cat configuracion/ubicacionLog.conf`/audit.log"
else
    read -p "Aplaste ENTER para volver."
    echo "[O] `date +'%F %T'`: Comprobar conexion a $ipe" >> "`cat configuracion/ubicacionLog.conf`/audit.log"
fi

