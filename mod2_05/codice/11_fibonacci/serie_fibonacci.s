#
# Filename: serie_fibonacci.s
#

######## DATA SEGMENT #########
    .data
msg:    .asciiz  "Inserire n per calcolare la serie di fibonacci fino all'n-esimo numero:\n"
msg1:   .asciiz  "I primi "
msg2:   .asciiz  " numeri della serie sono: "
space:  .asciiz  " "

######## TEXT SEGMENT #########
    .text
    .globl main

main:
    
    la $a0, msg
    jal print_str   # Print titolo
    
    jal scanf_d     # Ricezione in input del numero
    move $s0, $v0
    
    la $a0, msg1    # Print msg1
    jal print_str
    
    move $a0, $s0   # Print input inserito
    jal print_int
    
    la $a0, msg2    # Print msg2
    jal print_str
    
    li $s1, 0       # Iteratore

loop:
    move $a0, $s1   # Chiamata fib
    jal fib
    
    move $a0, $v0   # Print risultato
    jal print_int
    
    la $a0, space   # Print msg1
    jal print_str

    addi $s1, 1     # Incremento iteratore
    bne $s0, $s1, loop

    j end


### Funzione fib calcola l'n-esimo numero di fibonacci, assume che in $a0 ci sia l'input
fib:
    
    addi $sp, $sp, -4  # Push $ra nello stack
    sw $ra, 0($sp)

    addi $sp, $sp, -4  # Push $s0 nello stack
    sw $s0, 0($sp)

    addi $sp, $sp, -4  # Push $s1 nello stack
    sw $s1, 0($sp)

    move $s0, $a0       # Salva l'argomento

    beq $s0, $zero, return0     # if (n==0) return0

    li $t1, 1
    beq $s0, $t1, return1       # if (n==1) return1
    
    sub $a0, $s0, $t1           # Chiama fib(n-1)
    jal fib
    move $s1, $v0               # $s1 = fib(n-1)

    addi $a0, $s0, -2           # Chiama fib(n-2)
    jal fib 
    move $s2, $v0               # $s1 = fib(n-1)

    add $v0, $s1, $s2           # return fib(n) che è fib(n-1) + fib(n-2)

    lw $s1, 0($sp)     # Pop $s1 from stack
    addi $sp, $sp, 4 

    lw $s0, 0($sp)     # Pop $s0 from stack
    addi $sp, $sp, 4 

    lw $ra, 0($sp)     # Pop $ra from stack
    addi $sp, $sp, 4 

    jr $ra


return0:

    li $v0, 0   # Return 0

    lw $s1, 0($sp)
    addi $sp, $sp, 4 

    lw $s0, 0($sp)
    addi $sp, $sp, 4 

    lw $ra, 0($sp)
    addi $sp, $sp, 4 

    jr $ra


return1:

    li $v0, 1   # Return 1

    lw $s1, 0($sp)
    addi $sp, $sp, 4 

    lw $s0, 0($sp)
    addi $sp, $sp, 4 

    lw $ra, 0($sp)
    addi $sp, $sp, 4 

    jr $ra
    


### Funzione scanf di intero, mette il valore inserito in $v0
scanf_d:
    li $v0, 5
    syscall
    jr $ra

### Funzione print intero, assume che in $a0 ci sia l'intero da printare
print_int:
    li $v0, 1
    syscall
    jr $ra

### Funzione print stringa, assume che in $a0 ci sia la stringa da printare
print_str:
    li $v0, 4
    syscall
    jr $ra

### Funzione end programma
end:
    li $v0, 10
    syscall


