main:
	li $t0,0 #cont
	li $t1,0 #soma
	li $t2,1 #auxiliar para desvios
	li $t3,101 #valor auxiliar
	j for

for:
	beq $t0,$t3,fim #cont <= 100 => cont < 101
	add $t1,$t1,$t0 #soma=soma+cont
	addi $t0,$t0,1 #i++
	j for

fim: