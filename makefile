all : README.md guessinggame.sh

README.md : guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "- Date:- $(shell date)" >> README.md
	echo "- No of lines: $(shell wc -l guessinggame.sh) <-- File" >> README.md
clean : 
	rm README.md
