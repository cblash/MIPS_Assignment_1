.data			#code portion for predefined data
str:	
	.space 9 	#allocates uninitialized 9 bytes of information for string including NULL character
.text			#code portion for instructions
main: 
	li $v0, 8	#syscall code for reading in strings
	la $a0, str	#load space into call variable
	li $a1, 9	#allow input buffer size of 9 bytes
	syscall		#call for user input
#testing segment
	li $v0, 4	#syscall code for outputting string in $a0
	syscall		#print string revceived from user
	li $v0, 10
	syscall		#exit program
