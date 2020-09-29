#
# Filename: HelloWorld.s
#


    .data

        HelloWorld:  .asciiz "Hello World!\n"

    .text

    .globl main

main: 

    li $v0, 4
    la $a0, HelloWorld
    syscall

    # Fine del programma
    li $v0, 10
    syscall


