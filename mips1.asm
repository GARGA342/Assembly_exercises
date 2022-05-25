main:
	li $s1,1 #número 1
	li $s2,2 #número 2
	li $s3,3 #número 3
	li $t1,1 #auxiliar para efetuar o desvio condicional

	#caso $s3 seja maior
	slt $t0,$s3,$s2 #compara s3 com s2
	beq $t0,$t1,s3_menor_s2 #se s3 < s2 pula para a label ss_menor_s2
	slt $t0,$s3,$s1 #compara s3 com s1
	beq $t0,$t1,s3_menor_s1 #se s3 < s1 pula para a label s3_menor_s1

	addi $s0,$s3,0 #se s3 for o maior, coloca-se o seu resultado em s0
	j fim #vai para a ultima label e finaliza o programa

#comparação entre $s1 e $s2 com $s2 maior
s3_menor_s2:
	slt $t0,$s1,$s2 #compara s1 com s2
	beq $t0,$t1,s2_maior #se s1 < s2 pula para a label s2_maior
	addi $s0,$s2,0 #se s1 for o maior, coloca-se o seu resultado em s0
	j fim #vai para a ultima label e finaliza o programa

#comparação entre $s2 e $s1 com $s1 maior
s3_menor_s1:
	slt $t0,$s1,$s2
	beq $t0,$t1,s2_maior
	addi $s0,$s1,0 #se s1 for o maior, coloca-se o seu resultado em s0
	j fim #vai para a ultima label e finaliza o programa
	
#caso $s2 seja o maior
s2_maior:
	addi $s0,$s2,0 #com s2 sendo o maior, coloca-se o seu resultado em s0
	j fim #vai para a ultima label e finaliza o programa
	
fim: