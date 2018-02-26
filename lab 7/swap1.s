	.text
main:
	la	$a0,n1
	la	$a1,n2
	jal	swap
	li	$v0,1	# print n1 and n2; should be 27 and 14
	lw	$a0,n1
	syscall
	li	$v0,11	# prints character
	li	$a0,' ' 
	syscall
	li	$v0,1	# print integers
	lw	$a0,n2
	syscall
	li	$v0,11	# print character
	li	$a0,'\n'
	syscall
	li	$v0,10	# exit
	syscall

swap:	# your code goes here
	subi $sp, $sp, 4	#need space for only one integer in stack
	lw $t0, 0($a0)		#$t0 is the address of n1
	lw $t1, 0($a1)		#$t1 is the address of n2
	sw $t0, 0($sp)		#save 14 in first spot in stack
	addi $t0, $t1, 0 	#$t0 = $t1; swapping begins
	lw $t1, 0($sp) 		#first element in stack is now t1
	sw $t0, 0($a0) 		#store n2 into $a0
	sw $t1, 0($a1)		#store n1 into $a1
	addi $sp, $sp, 4	#need to free the memory
	jr $ra			#should continue back from line 6 

	.data
n1:	.word	14
n2:	.word	27
