main:
	li $s1,2 #número 1
	li $s2,3 #número 2 	
	li $s3,1 #número 3
	li $t1,1 #auxiliar para efetuar o desvio condicional

	#caso $s3 seja menor
	slt $t0,$s3,$s2 #compara s3 com s2
	bne $t0,$t1,s3_maior_s2 #se s3 > s2 pula para a label indicada
	slt $t0,$s3,$s1 #compara s3 com s2
	bne $t0,$t1,s3_maior_s1 #se s3 > s1 pula para a label indicada

	addi $s0,$s3,0 #se s3 for o maior, o valor contido nele é colocado em s0
	j fim #pula para a label final

#comparação entre $s1 e $s2 com $s2 menor
s3_maior_s2:
	slt $t0,$s1,$s2 #comparação entre s1 e s2
	beq $t0,$t1,s1_menor #se s1 < s2 pula para a label indicada
	addi $s0,$s2,0 #se s2 < s1 seu valor é armazenado em s0
	j fim #finaliza o programa indo para a úlima label

#comparação entre $s2 e $s1 com $s1 menor
s3_maior_s1:
	slt $t0,$s2,$s1 #compara s2 com s1
	beq $t0,$t1,s3_maior_s2 #se s2 < s1 salta-se para a label indicada
	addi $s0,$s1,0 #s0 recebe o valor de s1, sendo ele o menor
	j fim #finaliza o programa pulando para a última label
	
#caso $s2 seja o maior
s1_menor:
	addi $s0,$s1,0 #o valor de s1 é adicionado a 0 e armazenado em s0
	j fim #final do programa
	
fim: