#
# Filename: stack.s
#
######## DATA SEGMENT #########
    .data

msg: .asciiz "Fine del programma\n"

######## TEXT SEGMENT #########
    .text

    .globl main

main:
    

    li $s0, 0x1337 # Riempio $s0
    li $s1, 0x1338 # Riempio $s1
    li $s2, 0x1339 # Riempio $s2
    li $s3, 0x133a # Riempio $s3
    li $s4, 0x133b # Riempio $s4
    li $s5, 0x133c # Riempio $s5
    li $s6, 0x133d # Riempio $s6
    li $s7, 0x133f # Riempio $s7

    jal foo  # Chiamata alla funzione foo

    
    li $v0, 4   # Print msg
    la $a0, msg
    syscall

    
    li $v0, 10  # Fine del programma
    syscall


### Funzione foo pusha nello stack i registri $s0, $s1, ... fa delle operazioni e poi li poppa back
foo:

    addi $sp, $sp, -4 
    sw $s0, 0($sp)      # Push del registro $s0

    addi $sp, $sp, -4 
    sw $s1, 0($sp)      # Push del registro $s1

    addi $sp, $sp, -4 
    sw $s2, 0($sp)      # Push del registro $s2

    addi $sp, $sp, -4 
    sw $s3, 0($sp)      # Push del registro $s3

    addi $sp, $sp, -4 
    sw $s4, 0($sp)      # Push del registro $s4

    addi $sp, $sp, -4 
    sw $s5, 0($sp)      # Push del registro $s5

    addi $sp, $sp, -4 
    sw $s6, 0($sp)      # Push del registro $s6

    addi $sp, $sp, -4 
    sw $s7, 0($sp)      # Push del registro $s7

    # ... operazioni con $s1, $s2, etc ...
    # ...
    li $s0, 0
    li $s1, 1
    add $s3, $s0, $s1

    # ... bla bla ...

    li $s3, 3
    li $s4, 4
    mul $s5, $s3, $s4
    li $s6, 6
    li $s7, 7
    # ...
    # ... fine operazioni con $s1, $s2, etc ...



    lw $s7, 0($sp)
    addi $sp, $sp, 4   # Pop del registro $s7

    lw $s6, 0($sp)
    addi $sp, $sp, 4    # Pop del registro $s6

    lw $s5, 0($sp)
    addi $sp, $sp, 4    # Pop del registro $s5

    lw $s4, 0($sp)
    addi $sp, $sp, 4    # Pop del registro $s4

    lw $s3, 0($sp)
    addi $sp, $sp, 4    # Pop del registro $s3

    lw $s2, 0($sp)
    addi $sp, $sp, 4    # Pop del registro $s2

    lw $s1, 0($sp)
    addi $sp, $sp, 4    # Pop del registro $s1

    lw $s0, 0($sp)
    addi $sp, $sp, 4    # Pop del registro $s0
    
    jr $ra
