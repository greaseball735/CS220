.data
mat1:   .word 1, 2, 3, 4, 5, 6, 7, 8, 9     # Matrix A (3x3)
mat2:   .word 9, 8, 7, 6, 5, 4, 3, 2, 1     # Matrix B (3x3)
result: .word 0, 0, 0, 0, 0, 0, 0, 0, 0      # Matrix C (Result)
newline: .asciiz "\n"
space: .asciiz " "

.text
main:
    la $s3 , newline
    la $s4, space
    la $s0, mat1       # Base address of mat1
    la $s1, mat2       # Base address of mat2 
    la $s2, result     # Base address of result
    li $t0, 0          # i = 0 (row index)

loop_i:
    li $t1, 0          # j = 0 (column index)
loop_j:     
    li $t2, 0          # k = 0 (inner loop index)
    li $t3, 0          # sum = 0 (C[i][j] = 0)

loop_k:
    # Calculate address of mat1[i][k] = mat1 + (i * 3 + k) * 4
    mul $t4, $t0, 12   # i * 3 * 4 (row offset)
    sll $t5, $t2, 2    # k * 4 (column offset)
    add $t6, $t4, $t5  # (i * 12 + k * 4)
    add $t6, $s0, $t6  # &mat1[i][k]
    lw $t7, 0($t6)     # Load mat1[i][k]

    # Calculate address of mat2[k][j] = mat2 + (k * 3 + j) * 4
    mul $t4, $t2, 12   # k * 3 * 4 (row offset)
    sll $t5, $t1, 2    # j * 4 (column offset)
    add $t6, $t4, $t5  # (k * 12 + j * 4)
    add $t6, $s1, $t6  # &mat2[k][j]
    lw $t8, 0($t6)     # Load mat2[k][j]

    # Multiply and accumulate
    mul $t9, $t7, $t8  # mat1[i][k] * mat2[k][j]
    add $t3, $t3, $t9  # sum += product

    # Increment k
    addi $t2, $t2, 1   # k++
    blt $t2, 3, loop_k # if k < 3, repeat

    # Store sum in result[i][j]
    mul $t4, $t0, 12   # i * 3 * 4 (row offset)
    sll $t5, $t1, 2    # j * 4 (column offset)
    add $t6, $t4, $t5  # (i * 12 + j * 4)
    add $t6, $s2, $t6  # &result[i][j]
    sw $t3, 0($t6)     # Store sum
    move $a0, $t3
    jal print_int
    move $a0, $s4
    jal print_string

    # Increment j
    addi $t1, $t1, 1   # j++
    blt $t1, 3, loop_j # if j < 3, repeat
    move $a0, $s3
    jal print_string

    # Increment i
    addi $t0, $t0, 1   # i++
    blt $t0, 3, loop_i # if i < 3, repeat

    j exit
print_int:
    li $v0, 1
    syscall
    jr $ra
print_string:
    li $v0, 4
    syscall
    jr $ra
exit:
    li $v0, 10         # Exit program
    syscall