README.md: guessinggame.sh
	echo "## guessinggame" > README.md
	echo "# The unix workbench (final project)" >> README.md
	date '+DATE: %m/%d/%y%nTIME: %H:%M:%S' >> README.md
	echo " \n number of lines in guessinggame.sh:" >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clear:
	rm README.md
