.data			#code portion for predefined data
str:	.space 9 	#allocates uninitialized 9 bytes of information for string including NULL character
error:	.asciiz "Invalid hexadecimal number."	#error message to be displayed if input string found to be invalid
.text			#code portion for instructions
main: 
	li $v0, 8	#syscall code for reading in strings
	la $a0, str	#load space into call variable
	li $a1, 9	#allow input buffer size of 9 bytes
	syscall		#call for user input
initializations:
	li $s0, 0	#to hold the decimal value of final converted hexadecimal number
	li $s1, 10	#decimal value of enter or return. used later in code
	li $s2, 32	#decimal value of space. used later in code
	li $s3, 9	#decimal value of tab. used later in code
	li $s4, 0	#counter used to keep track of bytes read from input string
loop0:
	lb $t0, 0($a0)	#read in byte from input string
	
	slti $t1, $t0, 58	#check if byte from input is less than 58
	bne $t1, $zero, digit_range	#if byte is less than 58 proceed to 0-9 range of values
digit_range:
	slti $t1, $t0, 48	#check if byte from input is less than 48
	bne $t1, $zero, lowrange	#if less than 48, proceed to lower range of deicmal values
	subi $t3, $t0, 48	#find hexadecimal value of current byte from input
	j sum_up		#proceed to sum hexadecimal value into total
white_space:		#involves use of previously read byte
	
lowrange:
	beq $t0, $zero, sum_up		#check for conditions of whitespace and null string characters
	beq $t0, $s1, sum_up 
	beq $t0, $s2, white_space
	beq $t0, $s3, white_space	
	j invalid			#if none of the above proceed to invalid output
sum_up:
	beq $t2, $zero, invalid
	add $s0, $s0, $t3
	add $t2, $t0, $zero
	beq $t0, $s1, print		#if decial value of byte read in is white space or null proceed to print converted nuber
	beq $t0, $zero, print
	addi $a0, $a0, 1 	#increment address of user input to next byte
	addi $s4, $s4, 1	#increment counter of bytes read from user input
	j loop0			#proceed back to original loop
invalid: 			# section to print error message
	li $v0, 4		
	la $a0, error
	syscall
	j exit
print:				#section to print converted user input integer
	li $v0, 1
	addu $a0, $s0, $zero
	syscall
exit:			
	li $v0, 10
	syscall		#exit program
