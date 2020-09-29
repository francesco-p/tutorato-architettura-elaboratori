#
# Filename: sw.s
#
    .data

    .text
    .globl main

main:

    li $t0, 0x10000000 # Indirizzo di memoria dove salveremo $t1
    li $t1, 0xffffffff
    sw $t1, 0($t0)

    li $v0, 10      # Exit
    syscall
