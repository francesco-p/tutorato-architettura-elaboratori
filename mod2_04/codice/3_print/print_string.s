#
# Filename: print_string.s
#

    .data
Decorazione:    .asciiz     "-.-.-.-.-.-.-.-.-\n"
Nome:           .asciiz     "Francesco\n"
Cognome:        .asciiz     "Pelosin\n"
Asciiart:        .asciiz     "(-_-)Zzz..."


    .text
    .globl main

main:

    
    li $v0, 4       # print decorazione
    la $a0, Decorazione
    syscall

    
    li $v0, 4       # Print Nome
    la $a0, Nome
    syscall

    li $v0, 4       # print cognome
    la $a0, Cognome
    syscall

    
    li $v0, 4       # print asciiart
    la $a0, Decorazione
    syscall

    
    li $v0, 4       # print asciiart
    la $a0, Asciiart
    syscall

    
    li $v0, 10      # Exit
    syscall

