#!/bin/bash

# Pide al usuario que ingrese la hora actual en formato 24h (00-23)
read -p "Indica qué hora es (formato 24h, 00-23): " hora

# Pide al usuario que ingrese los minutos actuales
read -p "Indica qué minuto es (00-59): " minutos

# Verifica que la entrada sea válida
if ! [[ "$hora" =~ ^[0-1][0-9]$ || "$hora" == "2[0-3]" ]] || ! [[ "$minutos" =~ ^[0-5][0-9]$ ]]; then
    echo "Hora o minutos no válidos. Asegúrate de introducir una hora entre 00 y 23 y minutos entre 00 y 59."
    exit 1
fi

# Calcula el siguiente cuarto
if (( minutos < 15 )); then
    siguiente_cuarto=15
elif (( minutos < 30 )); then
    siguiente_cuarto=30
elif (( minutos < 45 )); then
    siguiente_cuarto=45
else
    siguiente_cuarto=0
    hora=$(( (hora + 1) % 24 ))
fi

# Muestra las horas y cuartos hasta las 00:00 del día siguiente
for (( h=hora; h<=23; h++ )); do
    # Muestra la hora en punto
    echo -n "$h:00"

    # Muestra los cuartos si corresponde
    if (( h > hora || (h == hora && minutos < 15) )); then
        for min in 15 30 45; do
            printf ", $h:%02d" "$min"
        done
    elif (( h == hora )); then
        for min in $(seq $siguiente_cuarto 15 45); do
            printf ", $h:%02d" "$min"
        done
    fi
    echo ""
done
