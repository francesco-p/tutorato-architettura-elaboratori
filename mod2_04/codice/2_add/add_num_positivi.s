#
# Filename: add_num_positivi.s
# 
    .data

    .text
    .globl main

main:

    # Load some registers
    li $t0, 0x1111     # Load Immediate
    li $t1, 0x2222     # Load Immediate
    add $t2, $t0, $t1  # Add 
    # in t2 ci sara 0x

    # Exit the program
    li $v0, 10
    syscall

