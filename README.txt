##NOTE: cblash208 is my personal github account made before taking this class while cblash was one I made specifically with my bison e-mail. 
##      I had accidentally made my first commit with cblash208 rather cblash due to confusion in command prompt.

**********************************
be sure to only test my final product, hex_to_decimal.s,
the others named main and main1 were what I progressively worked on in differnt versions
Please refer to the old versions of my README.txt to see my various thought processes
**********************************

After finishing my assignment I now see that preparing your pseudo-code/algorithm is the best way to translate miscellaneous thoughts to actual working code
I still found myself in my personal old habit of constructing most of the code to completion and then testing the end result, rather running tests on specific parts
I'd like to think my TA Shrij for proposing the idea of dividing the final lump sum by ten and displaying quotient and remainder beside eachother
That saved me quite a bit of time on figuring out how to display numbers with 1 as most significant bit.
 

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


	
	

