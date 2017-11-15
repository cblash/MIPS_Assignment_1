##NOTE: cblash208 is my personal github account made before taking this class while cblash was one I made specifically with my bison e-mail. 
##      I had accidentally made my first commit with cblash208 rather cblash due to confusion in command prompt.

For this third commit, changes were mostly made in code
A second mips file, main1, was made for actual big changes to the code while main is kept solely to find corresponding byte values of certain characters and for other observations
Things that still need to be done
1. Properly handling whitespace
2. Hexadecimal values a-f
3. properly converting previously pulled hex digits to the right exponent.
4. completing a coherent in code loop

Algorithm (in-progress):
1. read user input
2. take out and identify each character or byte
3. Add that byte's hexadecimal amount to a total
4. Store that total in $a0
5. Output that total using integer system call