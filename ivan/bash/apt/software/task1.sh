#!/bin/bash

#You are working as a system administrator in an Ubuntu environment. One of your tasks is to analyze the installed packages and identify which one has the most dependencies. This analysis can help you understand which packages have the largest footprint on the system.

for i in $(dpkg -l); do
	echo $i
done

exit 0
