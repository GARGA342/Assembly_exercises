main:
	#valores
	li $s1,9
	li $s2,2
	#auxiliares
	li $t0,1 #iterador
	li $t1,2 #contador
	j for

for:
	beq $t0,$s1,fim
	add $s2,$t1,$s2 # 2+2+2... $s1 vezes
	addi $t0,$t0,1 #i++
	j for

fim: