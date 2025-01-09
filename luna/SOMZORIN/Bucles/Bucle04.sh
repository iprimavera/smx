#!/bin/bash

read -p "Introduce las toneladas de uva (sin decimales): " toneladas

toneladas=$((toneladas + (toneladas % 1 > 0 ? 1 : 0)))

# Elegir modelo de vagón
while true; do
    echo "Selecciona el modelo de vagón:"
    echo "• Modelo Titan (tecla t) - 20,000 kg"
    echo "• Modelo Paquidermo (tecla p) - 30,000 kg"
    echo "• Modelo Albatros (tecla a) - 40,000 kg"
    read -n 1 -s modelo
    echo ""

    case $modelo in
        t) capacidad=1200; break ;;
        p) capacidad=900; break ;;
        a) capacidad=300; break ;;
        *) echo "Opción no válida. Por favor, selecciona t, p o a." ;;
    esac
done

# Calcular el número de vagones necesarios
kg_uva=$((toneladas * 1000))
vagones_necesarios=$(( (kg_uva + capacidad - 1) / capacidad ))

# Mostrar el resultado
echo "Número de vagones necesarios: $vagones_necesarios"

exit 0
