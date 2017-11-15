.data			#code portion for predefined data
str:	
	.space 9 	#allocates uninitialized 9 bytes of information for string including NULL character
.text			#code portion for instructions
main: 
	li $v0, 8	#syscall code for reading in strings
	la $a0, str	#load space into call variable
	li $a1, 9	#allow input buffer size of 9 bytes
	syscall		#call for user input
	lw $t0, 0($a0)
	lw $t1, 4($a0)
loop0:
	lb $t2, 0($t0)
	
	li $v0, 10
	syscall		#exit program
