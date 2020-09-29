#
# Filename: array.s
#
    .data

arr:	.word 11, 8, 3, 22, 59, 6, 16, 0, 3, 2

    .text
    .globl main
    
main:

    #--- Metodo 1 ---
    li $t0, 12 
    lw $t1, arr($t0)
    
    #--- Metodo 2 ---
    #la $t0, arr
    #lw $t1, 4($t0)

    li $v0, 1       # Print int
    move $a0, $t1
    syscall

    li $v0, 10      # Exit
    syscall

    # Esercizio: 
    # Fare un loop che cambia l'offset per stampare tutti gli elementi
