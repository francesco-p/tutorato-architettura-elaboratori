#
# Filename: pow.s
#
######## DATA SEGMENT #########
    .data

array: .word 3, 10, 4, 3, 4, 5, 3, 7, 1, 9
msg: .asciiz "^2 ="
n: .asciiz "\n"


######## TEXT SEGMENT #########
    .text

    .globl main

main:
    
    li $t0, 0 # index
    li $t4, 4 # Fattore di moltiplicazione

loop:


    mul $t3, $t0, $t4 # Calcola l'offset
    #sll $t3, $t0, 2  # Calcola l'offset con sll

    lw $a0, array($t3) # Carica il valore corrente dell'array
    jal pow2 # Chiamata alla funzione pow2

    move $s0, $a0   # Salvare il parametro della funzione
    move $s1, $v0   # Salvo il risultato di pow2

    # Print $a0
    li $v0, 1
    move $a0, $s0
    syscall

    # Print msg
    li $v0, 4
    la $a0, msg
    syscall

    # Print $v0
    li $v0, 1
    move $a0, $s1
    syscall

    # Print \n
    li $v0, 4
    la $a0, n
    syscall

    addi $t0, $t0, 1 # Incremento index

    slti $t2, $t0, 10 
    bne $t2, $zero, loop


    # Fine del programma
    li $v0, 10
    syscall


    # FUNZIONE pow2(int x)
    # Assume che l'argomento sia in $a0
	# Return value sarà salvato in $v0
	# Il return address è salvato in $ra (dalla jal)
pow2:
    mul $v0, $a0, $a0 
    jr $ra


