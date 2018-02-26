	.text
main:
	la	$a0,n1
	la	$a1,n2
	jal	swap
	li	$v0,1	# print n1 and n2; should be 27 and 14
	lw	$a0,n1
	syscall
	li	$v0,11
	li	$a0,' '
	syscall
	li	$v0,1
	lw	$a0,n2
	syscall
	li	$v0,11
	li	$a0,'\n'
	syscall
	li	$v0,10	# exit
	syscall

swap:	# your code goes here
	addi $sp, $sp, -4	#	
	lw $t0, 0($a0)		#load address of $a0 (n1) into $t0
	lw $t1, 0($a1)		#load address of $a1 (n2) into $t1
	lw $t2, 0($sp)		#load address of stack into $t2
        add $t2, $t0, $0 	#$t2 is now address of $a0
	add $t0,$0,$t1 		#$t0 is now address of $a1
	add $t1,$0,$t2		#$t1 is now address of $t2
	sw $t0, 0($a0)		#value of $t0 (27) is stored in $a0
	sw $t1, 0($a1)		#value of $t1 (14) is stored in $a1
	addi $sp,$sp,4		#free up stack
	jr $ra
	
	
	.data
n1:	.word	14
n2:	.word	27
