#
# Filename: ricorsione.s
#
######## DATA SEGMENT #########

	.data

######## TEXT SEGMENT #########
	.text
    .globl main

main:

    li $a0, 3       # parametro di ricorsione
    jal rec    

    li $v0, 10       # fine programma
    syscall

rec:
    addi $sp, $sp, -4   # Push $ra nello stack
    sw $ra, 0($sp)

    addi $sp, $sp, -4   # Push $a0 nello stack
    sw $a0, 0($sp)
    
    beq $a0, $zero, return  # if(i==0) return

    # Ricorsione in testa
    #li $v0, 1          # print $a0
    #syscall
    
    addi $a0, $a0, -1   # Decremento parametro

    jal rec             # Chiamata ricorsiva

    # Ricorsione in coda
    li $v0, 1           # Print $a0
    syscall

    lw $a0, 0($sp)      # Pop $a0 from stack
    addi $sp, $sp, 4 

    lw $ra, 0($sp)      # Pop $ra from stack
    addi $sp, $sp, 4 

    jr $ra


return:

    lw $a0, 0($sp)
    addi $sp, $sp, 4 

    lw $ra, 0($sp)
    addi $sp, $sp, 4 

    jr $ra

