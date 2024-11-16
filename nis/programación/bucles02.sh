#!/bin/bash

#!/bin/bash

while true ; do

l=$(ls /proc/|wc -l)

	if [ $l -ge 2000 ]; then
		echo "Testing /proc/: $l processes -> DANGER"
	else
		echo "Testing /proc/: $l processes -> OK"
	fi

sleep 10

done

exit 0
