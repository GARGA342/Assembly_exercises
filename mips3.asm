main:
	li $s1,20 #número a ser dividido
	li $s2,2 #constante para efetuar as divisões
	li $t1,1 #auxiliar para comparações
	
	#divide $s1 por $s2 e pega o módulo da divisão em $hi
	div $s1,$s2 #s1/s2
	mfhi $t0 #traz o módulo da divisão para t0
	beq $t0,$t1,impar #compara o módulo da divisão com t1 != 0 pula para a label impar
	addi $s4,$zero,1 #se o módulo for zero, é armazenado 1 em s4
	j fim #finaliza o programa
	
impar:
	addi $s4,$zero,0 #se o número for impar é adicionado 0 a s4
	j fim #pula para a label final do programa
	
fim: