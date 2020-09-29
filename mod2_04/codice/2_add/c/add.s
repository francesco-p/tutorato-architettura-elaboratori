#
# Filename: add.s
#

.data
    
    newline: .asciiz "\n"

.text

.globl main

main:
    
    li $t0, 1
    li $t1, 2
    add $t2, $t0, $t1

    # Print $t2
    li $v0, 1
    move $a0, $t2
    syscall

    # Print \n
    li $v0, 4
    la $a0, newline
    syscall

    # Fine del programma
    li $v0, 10
    syscall

