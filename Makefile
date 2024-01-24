##
## EPITECH PROJECT, 2024
## workshop-functional-prog/Makefile
## File description:
## Step 3
##

MAIN = main.hs

all:
	ghc --make $(MAIN)

clean:
	rm -f *.o *.hi
