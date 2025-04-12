.data
newline: .asciiz "\n"
message: .asciiz "This is a very long string i dont know what else to say thanks for this life god: "

.text
main:
    la $a0, message
words_in_string:
    add $t0, $a0, $zero
    li $a0, 0  #ans
    # li $t2, 0

    jal loop1
    jr $ra

loop1:
    lb $t2 , 0($t0) #current
    addiu $t0, $t0, 1
    beq $t2, 0, exit
    beq $t2 , 32, l1 
    j loop1

l1:
    addiu $a0 , $a0, 1
    j loop1


print_int:
    li $v0, 1
    syscall
    jr $ra
print_string:
    li $v0, 4
    syscall
    jr $ra
exit:
    jal print_int
    li $v0, 10         # Exit program
    syscall