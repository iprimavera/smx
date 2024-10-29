#!/bin/bash

echo "Give me a sentence"
read frase
a_count=$(echo $frase |grep -o -i "a" | wc -l)
e_count=$(echo $frase |grep -o -i "e" | wc -l)
i_count=$(echo $frase |grep -o -i "i" | wc -l)
o_count=$(echo $frase |grep -o -i "o" | wc -l)
u_count=$(echo $frase |grep -o -i "u" | wc -l)

	echo "Numero de "a": $a_count"
	echo "Numero de "e": $e_count"
	echo "Numero de "i": $i_count"
	echo "Numero de "o": $o_count"
	echo "Numero de "u": $u_count"
if [ $a_count -ge $e_count ] && [ $e_count -ge $i_count ] && [ $i_count -ge $o_count ] && [ $o_count -ge $u_count ]; then
	echo "Sentence is ok"
else
	echo "Sentence is not ok"
fi
