#!/bin/bash

FILES=("horizontal horizontal_empty 
	    vertical vertical_empty
	    gradual gradual_empty")

NC='\033[0m'
GFG_MBG='\033[0;37;1;45m'
BFG_CBG='\033[0;30;1;46m'

if [ ! -f build/ ]; then
	rm -r build/
fi

mkdir build

for file in $FILES; do
	if [ -f src/$file.tex ]; then
		pdflatex -interaction=batchmode -output-directory=build src/$file
		rm build/$file.log build/$file.aux
		if [ -f build/$file.pdf ]; then
			echo -e "$BFG_CBG $file.pdf created successfully$NC"
		else
			echo -e "$GFG_MBG The file $file.pdf didn't create correctly$NC"
		fi
	else
		echo -e "$GFG_MBG The file $file.tex doesn't exists$NC"
	fi
done

if [ -z "$(ls -A 'build/')" ]; then
	rm -r build/
fi