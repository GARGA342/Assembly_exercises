main:
	li $s1,13
	li $s2,2

	#se $s1 for igual a 2 o número é primo. 
	#caso contrário divide-se um pelo outro e observa-se o valor de $hi
	beq $s1,$s2,primo
	div $s1,$s2
	mfhi $t0
	beq $t0,$zero,fim
	
primo:
	li $s3,1

fim: