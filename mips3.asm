main:
	li $s1,20
	li $s2,2
	li $t1,1
	
	#divide $s1 por $s2 e pega o módulo da divisão em $hi
	div $s1,$s2
	mfhi $t0
	beq $t0,$t1,impar
	addi $s4,$zero,1
	j fim
	
impar:
	addi $s4,$zero,0
	j fim
	
fim: