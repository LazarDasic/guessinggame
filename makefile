all: README.md

README.md:
	echo "## guessinggame.sh for The Unix Workbench course" > README.md
	echo -n "README.md created: " >> README.md
	date >> README.md
	echo -n "Number of lines in guessinggame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md