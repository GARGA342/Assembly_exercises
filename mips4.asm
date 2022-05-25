main:
	li $s1,13 #número para a verificação
	li $s2,2 #mínimo divisor
	j for #pula para a label for

for
	#se $s1 for igual a 2 o número é primo. 
	#caso contrário divide-se um pelo outro e observa-se o valor de $hi
	beq $s1,$s2,primo #compara s1 com s2, se for, pula para a label primo
	div $s1,$s2 #caso os números sejam diferentes, divide-se s1 por s2
	mfhi $t0 #o módulo da divisão é copiado para t0
	beq $t0,$zero,fim #compara t0 com zero e em caso positivo, pula para a label primo
	j for #segue para o próximo laço voltando para o inicio ad label

primo:
	li $s3,1 # se o valor for primo, armazena-se 1 em s3
	j fim #pula para a label final

fim: