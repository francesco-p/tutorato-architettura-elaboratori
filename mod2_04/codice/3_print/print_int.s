#
# Filename: print_int.s
#

    .data

msg:        .asciiz     "Print numero int "


    .text
    .globl main

main:
    li $v0, 4           # Print msg
    la $a0, msg
    syscall

    li $t0, 0xfffffff1  # che numero è?
    
    li $v0, 1           # Print int
    move $a0, $t0
    syscall

    # Exit
    li $v0, 10
    syscall

