# Navarro Ramírez José Manuel
.data
 
.text

j main
 
multiplicar:
   addi $sp, $sp, -4 # Hace espacio en el stack
   sw $ra, 0($sp) # Almacena $ra en sp 
   
   add $s3, $s3, $s1
   addi $s2, $s2, -1 # Se resta uno al multiplicador
   
   bne $s2, $zero, multiplicar  # si multiplicador != 0, salta a multiplicar
   
   lw $ra, 0($sp)
   addi $sp, $sp, 4
   jr $ra
   
main:
   addi $s1, $zero, 7  # número a multiplicar
   addi $s2, $zero, 3 # multiplicador
   add $s3, $zero, $zero # resultado final
   
   jal multiplicar




