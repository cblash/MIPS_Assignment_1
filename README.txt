##MISTAKES WERE MADE
##And fixed I think

The MIPS code before only worked in MARS 4.5 compiler
The code I have currently should work for QtSPIM
Thanks to my TAs for letting me know before I received a big fat zero.

##NOTE: cblash208 is my personal github account made before taking this class while cblash was one I made specifically with my bison e-mail. 
##      I had accidentally made my first commit with cblash208 rather cblash due to confusion in command prompt.

**********************************
be sure to only test my final product, hex_to_decimal.s,
the others named main and main1 were what I progressively worked on in differnt versions
Please refer to the old versions of my README.txt to see my various thought processes
**********************************

++++++++++++++++++++++
Algorithm :
++++++++++++++++++++++
1. read user input
2. take out and identify lowest character or byte
3. Add that byte's hexadecimal amount to a total if valid hexadecimal digit
	a. otherwise handle it differently as whitespace, newline, NULL, or invalid byte
4. repeat two and three until NULL, invalid byte, or an incorrect combination of whitespace and valid hexadecimal digits is encountered
	a. if invalid byte or an incorrect combination is encountered display error message and terminate program
5. Store the total in $a0
6. Output that total using integer system call
++++++++++++++++++++++


+++++++++++++++++++++++++++
Pseudo Code
+++++++++++++++++++++++++++
Read user input
Read lowest byte from user
Check the value
if (value is hex number)
	if (hex number has been read = true)
		if (whitespace has been read = true)
			if (last byte read = whitespace)
				display error message, exit program
			else
				go to: multiply sum by 16
		else
			go to: multiply sum by 16
		multiply sum by 16
		add hex number to sum
	else
		add hex number to sum
	last byte read = hex number
	hex number has been read = true
	increment addrress number
	go back to: check Value
else if (value is whitespace)
	last byte read = whitespace
	space has been read = true
	increment addrress number
	go back to: check Value
else if (value is newline)
	if (hex number has been read = true)
		display sum, exit program
	else
		display error message, exit program
else if (Value is Null or 0)
	if (hex number has been read = true)
		display sum, exit program
	else
		display error message, exit program
else   ## Value is invalid
	display error message, exit program
++++++++++++++++++++++++++++++++++


	
	

