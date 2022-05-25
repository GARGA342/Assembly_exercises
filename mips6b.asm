main:
	li $t0,0 #cont
	li $t1,0 #soma
	li $t2,1 #auxiliar para desvios
	li $t3,101 #valor auxiliar
	j for #pula para a label for

for:
	#para cont <= 100 -> o valor de t3 deve ser 101
	beq $t0,$t3,fim #comparação entre t0 e t3, caso positivo, pula para o final
	add $t1,$t1,$t0 #soma=soma+cont 
	addi $t0,$t0,1 #i++
	j for #pula para o inicio da label

fim: