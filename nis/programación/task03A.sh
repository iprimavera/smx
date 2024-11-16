#!/bin/bash

echo "Give me an hour ->"
read h
echo "Give me a minute ->"
read m
if [  $h -lt 8 ]; then
	echo "Too Early"
exit 0
fi
let s=60*60
if [ $h -ge 8 ]; then
let horasrestantes=$h-8
echo "the seconds restanst $s"
fi

let tm=$m*60
let t=$tm-$s
 echo "$t"
exit 0
