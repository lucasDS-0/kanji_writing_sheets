#!/bin/bash

FILES=("horizontal vertical horizontal_empty vertical_empty")

MAGENTA='\033[0;35m'
NC='\033[0m'
CYAN='\033[0;36m'  

for file in $FILES; do
	if [ -e /src/"$file".tex ]; then
		echo -e "The $MAGENTA file $file.tex doesn't exists.$NC"
	else
		latexmk -pdf -silent -output-directory=./build src/$file
		# This
		cd build/
		# is
		latexmk -c -silent $file.pdf
		# horrible
		cd ..
		echo -e "$CYAN $file.pdf succesfully created.$NC"
	fi
done

