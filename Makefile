README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Date and Time" >> README.md
	echo "$(shell date)" >> README.md
	echo "" >> README.md
	echo "## Number of Lines in guessinggame.sh" >> README.md
	echo "$(shell wc -l < guessinggame.sh)" >> README.md
