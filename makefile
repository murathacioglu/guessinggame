all: README.md

README.md: guessinggame.sh
	 echo "## Guessin Game" >README.md
	 echo  "The date and time when the makefile was created is" >>README.md
	 date >>README.md
	 echo  "The number of lines in guessinggame.sh is"  $(< guessinggame.sh wc -l) >>README.md
