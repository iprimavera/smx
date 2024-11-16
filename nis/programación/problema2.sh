#!/bin/bash

echo "Dame un numero"
read X
echo "Dame otro numero"
read Y
echo "Dame otro más"
read Z

if [ $X -ge $Y -a $X -ge $Z ]; then
 echo "$X"
fi

if [ $Y -ge $X -a $Y -ge $Z ]; then
 echo "$Y"
fi

if [ $Z -ge $X -a $Z -ge $Y ]; then
 echo "$Z"
fi
exit 0

