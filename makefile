README.md: guessinggame.sh
	echo " #guessinggame" > README.md
	date '+DATE: %m/%d/%y%nTIME: %H:%M:%S' >> README.md
	echo "lines in guessinggame.sh:" >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clear:
	rm README.md
