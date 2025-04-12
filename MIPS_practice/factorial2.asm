.data
.text
main:
    li $v0,5
	syscall
	move $a0,$v0
    jal fact
    j Exit

fact:
    #preserve a0 and ra
    addi $sp , $sp, -8
    sw $a0, 0($sp)
    sw $ra, 4($sp)
    
    slti $t0, $a0 , 1
    beq $t0, $zero, L1

    # else return
    addi $sp, $sp, 8
    addi $v1, $zero, 1
    jr $ra

L1:
    addi $a0, $a0, -1
    jal fact
    lw $ra, 4($sp)
    lw $a0, 0($sp)
    addi $sp, $sp, 8
    mul $v1, $v1, $a0  
    jr $ra


Exit:
    li $v0,1
    add $a0, $zero, $v1
    syscall

    li $v0,10
	syscall
