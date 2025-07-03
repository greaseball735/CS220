.data
str:        .asciiz "abcdef"        # The input string
len:        .word 6              # Length of the string

newline:    .asciiz "\n"

.text
.globl main

main:
    la $a0, str              # Load address of string
    li $a1, 0                # l = 0
    lw $t0, len              # Load string length
    move $a2, $t0            # Pass length as $a2
    jal permute              # Call permute(str, 0, len)

    li $v0, 10               # Exit
    syscall

# permute(char* s, int l, int len)
permute:
    # Stack frame: store return address and saved registers
    addi $sp, $sp, -16
    sw $ra, 0($sp)
    sw $s0, 4($sp)
    sw $s1, 8($sp)
    sw $s2, 12($sp)

    move $s0, $a0        # s
    move $s1, $a1        # l
    move $s2, $a2        # len

    # Base case: if l == len - 1, print string
    addi $t1, $s2, -1
    beq $s1, $t1, print_str

    # for (i = l; i < len; i++)
    move $t2, $s1        # i = l

permute_loop:
    bge $t2, $s2, permute_end

    # swap(s[l], s[i])
    add $t3, $s0, $s1        # address of s[l]
    add $t4, $s0, $t2        # address of s[i]
    lb $t5, 0($t3)           # temp = s[l]
    lb $t6, 0($t4)           # s[i]
    sb $t6, 0($t3)           # s[l] = s[i]
    sb $t5, 0($t4)           # s[i] = temp

    # Recursive call: permute(s, l + 1, len)
    move $a0, $s0
    addi $a1, $s1, 1
    move $a2, $s2

    jal permute

    # backtrack: swap back
    add $t3, $s0, $s1
    add $t4, $s0, $t2
    lb $t5, 0($t3)
    lb $t6, 0($t4)
    sb $t6, 0($t3)
    sb $t5, 0($t4)

    addi $t2, $t2, 1
    j permute_loop

permute_end:
    # Restore registers
    lw $ra, 0($sp)
    lw $s0, 4($sp)
    lw $s1, 8($sp)
    lw $s2, 12($sp)
    addi $sp, $sp, 16
    jr $ra

# print_str:
print_str:
    li $v0, 4
    move $a0, $s0
    syscall

    # print newline
    li $v0, 4
    la $a0, newline
    syscall

    j permute_end
