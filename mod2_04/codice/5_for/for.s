#
# Filename: for.s
#


.data

    newline: .asciiz "\n"

.text

.globl main

main:

    li $t0, 0
    li $t1, 10

    loop:

        # Print $t0
        li $v0, 1
        move $a0, $t0
        syscall

        # Print \n
        li $v0, 4
        la $a0, newline
        syscall

        addi $t0, 1

        bne $t0, $t1, loop

    # Ends the program
    li $v0, 10
    syscall


