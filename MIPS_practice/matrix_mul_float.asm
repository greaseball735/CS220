.data
mat1 : .word 1,2,3,4,5,6,7,8,9
mat2: .word 9,8,0,7,6,5,4,2,1

.text
main:
    addiu $sp, $sp, -36
    la $s3, mat1
    la $s4, mat2
    li $s0, 0
    li $s1, 0
    li $s2, 0
    j mat_mul


mat_mul: 
    j loop1

loop1:
    beq $s0, 3, Exit
    addi $s0, $s0, 1
    j loop2

loop2:
    beq $s1, 3 , loop1 
    #load ci, j in s5
    sll $t3, $s0, 2
    add $t3, $t3, $s1
    add $t3, $sp, $t3
    li $s2, 0
    li $s5, 0
    sw $s5, 0($t3)
    addi $s1, $s1, 1
    j loop3


loop3:
    #matrix 1
    beq $s2, 3, loop2
    sll $t3, $s0, 2
    add $t3, $t3, $s2
    add $t3, $t3, $s3

    #matrix 2
    sll $t4, $s2, 2
    add $t4, $t4, $s1
    add $t4, $t4, $s4

    
    #index
    lw $t0, 0($t3)
    lw $t1, 0($t4)


    mult	$t0, $t1			# $t0 * $t1 = Hi and Lo registers
    mflo	$t2	
    # lw $t2, +				# copy Lo to $t2
    addu $s5, $s5, $t2


    addi $s2, $s2, 1
    j loop3


Exit:
    li $v0,10
	syscall
print_int:
    li $v0, 1
    syscall
    jr $ra