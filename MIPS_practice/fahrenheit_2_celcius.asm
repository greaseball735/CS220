.data
message: .asciiz "please enter a number"
.text
main:
    la $a0, message
    jal print_string
    jal input
    jal f2c
    jal print_float
    j Exit


f2c:
    lui $s0, 0x40a0
    lui $s1, 0x4110
    lui $s3 , 0x4200
    mtc1 $s0, $f1
    mtc1 $s1, $f2
    mtc1 $s3, $f3
    div.s $f4, $f1, $f2
    # Why This Works
# MIPS Floating-Point Pipeline Behavior
# The CPU reads all source operands ($f1 and $f2) before writing the result back to $f2.
# There is no "write-after-read" hazard because the division operation completes in multiple cycles, and the original value of $f2 is preserved until the new result is ready.
    sub.s $f5, $f0, $f3
    mul.s $f12, $f4 , $f5 
    jr $ra
    #input in f0
    #answer in $f12

print_string:
    li $v0, 4
    syscall
    jr $ra
print_float:
    li $v0, 2
    syscall
    jr $ra
input:
    li $v0, 6
    syscall
    jr $ra
Exit:
    li $v0,10
	syscall