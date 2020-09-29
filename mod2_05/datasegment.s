.data 

arr_a: .asciiz "ciao"
.space 10

arr_b: .asciiz "ciao"
.space 10

arr_c: .asciiz "ciao"
.space 10

.text

.globl main


main:

    li $t7, 65

    la $t0, arr_a
    
    sb $t7, 0($t0)


