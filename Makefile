all: README.md

README.md:
          echo "## Project Name:**guessinggame.sh** Peer graded assignment for coursera\n" > README.md
          echo -n "Date when README.md was run:">> README.md
          date >> README.md
          echo -n "\n he Number of lines in code guessinggame.sh is :" >> README.md
          wc -l < ./guessinggame.sh >> README.md
clean:
      rm -f README.md
