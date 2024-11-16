#!/bin/bash

echo "Dame un año"
read ano

if (( ($ano % 4 == 0 && $ano % 100 != 0) || ($ano % 400 == 0) )); then
	echo "bisiesto"
else
	echo "no bisiesto"
fi
