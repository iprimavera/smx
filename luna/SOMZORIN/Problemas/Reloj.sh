 #!/bin/bash

echo "Dame una hora:"
read hora

if [ $hora -le 5 ]; then
	echo "Buena madrugada"
elif [ $hora -le 11 ]; then
	echo "Buen dia"
elif [ $hora -le 19 ]; then
	echo "Buenas tardes"
elif [ $hora -le 23 ]; then
	echo "Buenas noches"
else 
	echo  "Buena madrugada"
fi
exit 0
