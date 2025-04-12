
.data

# numbers: .word 8, 100, 0, 3, 7, 9, 2, 7, -3, 0		#create array which holds numbers
message1: .asciiz "Invalid number"			#message to be printed
message2: .asciiz "valid number"
s0: .asciiz "zero"
s1: .asciiz "one"
s2: .asciiz "two"
s3: .asciiz "three"
s4: .asciiz "four"
s5: .asciiz "five"
s6: .asciiz "six"
s7: .asciiz "seven"
s8: .asciiz "eight"
s9: .asciiz "nine"
newline: .asciiz " "
string_array: .word s0, s1, s2, s3, s4, s5, s6, s7, s8, s9
.text
main:

    la $s1, string_array

    li $v0,5
	syscall
	move $t0,$v0

    # clo $t2,$t0
    srl $t1,$t0,31
    bne $t2,$zero,INVALID

    j loop


    # li $v0,1
	# move $a0,$t2
	# syscall  



    
    # li $v0, 4					#print out message
	# la $a0, message2
	# syscall

    # j EXIT



loop:

    # li $t0, 10       # Load 10 into $t0
    li $t7, 10        # Load 3 into $t1

    div $t0, $t7     # Perform division: $t0 / $t1
    mflo $t2         # Move quotient from LO to $t2
    mfhi $t3         # Move remainder from HI to $t3
    move $t0,$t2

    sll $t3, $t3, 2
    add $s2, $s1, $t3
    
    lw $a0,0($s2)
    li $v0, 4
	syscall

    la $a0, newline       # Load address of newline
    li $v0, 4             # Syscall for print string
    syscall
    beq $t2,$zero,EXIT

    j loop




INVALID:
    li $v0, 4					#print out message
	la $a0, message1
	syscall

EXIT:
    li $v0, 10					#end program
	syscall