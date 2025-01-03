#!/bin/bash

FILES=("horizontal horizontal_empty 
	    vertical vertical_empty
	    gradual gradual_empty")

MAGENTA='\033[0;35m'
NC='\033[0m'
CYAN='\033[0;36m'  

for file in $FILES; do
	if [ -e /src/$file.tex ]; then
		echo -e "$MAGENTA The file $file.tex doesn't exists.$NC"
	else
		latexmk -pdf -silent -output-directory=./build src/$file
		# This
		cd build/
		# is
		if [ -e $file.pdf ]; then
			latexmk -c -silent $file.pdf
			echo -e "$CYAN $file.pdf created successfully.$NC"
		else
			echo -e "$MAGENTA The file $file.tex didn't create correctly.$NC"
		fi
		# horrible
		cd ..
	fi
done

