main:
	li $s1,2
	li $s2,3
	li $s3,1
	li $t1,1 #auxiliar para efetuar o desvio condicional

	#caso $s3 seja menor
	slt $t0,$s3,$s2
	bne $t0,$t1,s3_maior_s2
	slt $t0,$s3,$s1
	bne $t0,$t1,s3_maior_s1

	addi $s0,$s3,0
	j fim

#comparação entre $s1 e $s2 com $s2 menor
s3_maior_s2:
	slt $t0,$s1,$s2
	beq $t0,$t1,s1_menor
	addi $s0,$s2,0
	j fim

#comparação entre $s2 e $s1 com $s1 menor
s3_maior_s1:
	slt $t0,$s2,$s1
	beq $t0,$t1,s3_maior_s2
	addi $s0,$s1,0
	j fim
	
#caso $s2 seja o maior
s1_menor:
	addi $s0,$s1,0
	j fim
	
fim: