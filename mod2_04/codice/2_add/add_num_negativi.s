# 
# Filename: add_num_negativi.s
#

    .data

    .text

    .globl main

main:

    li $t0, 0xffffffff  # -1
    li $t1, 0x00000002  # +2
    add $t2, $t0, $t1   # +1

    li $t0, 0xfffffffc  # -4
    li $t1, 0xfffffffd  # -3
    add $t2, $t0, $t1   # -7

    li $t0, 0x7fffffff  # numero esprimibile più grande
    li $t1, 0x1  # aggiungo 1, cosa succederà?
    add $t2, $t0, $t1

    # Fine del programma
    li $v0, 10
    syscall

