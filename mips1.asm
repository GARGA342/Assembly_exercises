main:
	li $s1,1
	li $s2,2
	li $s3,3
	li $t1,1 #auxiliar para efetuar o desvio condicional

	#Caso $s3 seja maior
	slt $t0,$s3,$s2
	beq $t0,$t1,s3_menor_s2
	slt $t0,$s3,$s1
	beq $t0,$t1,s3_menor_s1

	addi $s0,$s3,0
	j fim

#comparação entre $s1 e $s2 com $s2 maior
s3_menor_s2:
	slt $t0,$s1,$s2
	beq $t0,$t1,s2_maior
	addi $s0,$s2,0
	j fim

#comparação entre $s2 e $s1 com $s1 maior
s3_menor_s1:
	slt $t0,$s1,$s2
	beq $t0,$t1,s2_maior
	addi $s0,$s1,0
	j fim
	
#caso $s2 seja o maior
s2_maior:
	addi $s0,$s2,0
	j fim
	
fim: