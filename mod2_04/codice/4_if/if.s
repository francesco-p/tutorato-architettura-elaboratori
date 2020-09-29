#
# Filename: if.s
#
    .data

ab:     .asciiz     "a < b\n"
ba:     .asciiz     "a >= b\n"

    .text

    .globl main

main:

    li $t0, 2   # a
    li $t1, 1   # b

    slt $t2, $t0, $t1       # if (a minore b)
    beq $t2, $zero, Else    # if not(a minore b)
    
    li $v0, 4               
    la $a0, ab
    syscall

    j EndIf


Else:
    
    li $v0, 4
    la $a0, ba
    syscall

    j EndIf

EndIf:
    
    # End
    li $v0, 10
    syscall

