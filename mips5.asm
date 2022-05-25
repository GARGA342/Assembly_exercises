main:
	#valores
	li $s1,9
	li $s2,2
	#auxiliares
	li $t0,1 #iterador
	li $t1,2 #contador
	j for #pula para a label for

for:
	beq $t0,$s1,fim #compara s1 com t0 e em caso positivo, pula para o final
	add $s2,$t1,$s2 #2+2+2... $s1 vezes
	addi $t0,$t0,1 #i++ #incrementa o iterador
	j for #volta para o início da label

fim: