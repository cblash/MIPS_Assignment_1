##NOTE: cblash208 is my personal github account made before taking this class while cblash was one I made specifically with my bison e-mail. 
##      I had accidentally made my first commit with cblash208 rather cblash due to confusion in command prompt.

I reviewed with others on using the right powers of 16 in my final sum and found that multiplying the sum by 16 everytime before adding the most recent byte to the sum works
Here's why:
example hex number input
4216
this equates to
4*(16^3) + 2*(16^2) + 1*(16^1) + 6(16^0)
In memory this nummber is stored big endian (noted back in first commit)therefore,
when reading bytes with (load byte) instruction the most significant number is taken first, checked and add to a sum
so after the first addition, the sum can be expressed as
0*16 + 4
after the second addition
16(0*16 + 4) + 2 = 0 + 4*16 + 2
after the third
16(4*16 + 2) + 1 = 4*(16^2) + 2*(16^1) + 1*(16^0)
and so on until NULL is read in and addition stops

++++++++++++++++++++++
Algorithm :
++++++++++++++++++++++
1. read user input
2. take out and identify most recent character or byte
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
	else  ##########THIS SHOULDN'T HAPPEN
		exit program
else   ## Value is invalid
	display error message, exit program
++++++++++++++++++++++++++++++++++


	
	

