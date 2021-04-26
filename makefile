all: README.md

README.md: guessinggame.sh
	 echo "## Guessing Game" >README.md
	 echo  "The date and time when the makefile was created is" >>README.md
	 date >>README.md
	 echo  "\\" >>README.md
	 echo  "The number of lines in guessinggame.sh is" >>README.md
	 < guessinggame.sh wc -l >>README.md
