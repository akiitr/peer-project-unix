all : README.md guessinggame.sh

README.md : guessinggame.sh
	echo "# Guessing Game" > README.md
	echo -n "- Date - " >> README.md
	date >> README.md
	echo -n "- No of lines in guessinggame.sh: " >> README.md
	wc -l < guessinggame.sh >> README.md
clean : 
	rm README.md
