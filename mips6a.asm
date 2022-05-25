.data
	#alocando espaço para os vetores (16 * 4bytes = 64)
	A:
		.space 64
	B:
		.space 64
	C:
		.space 64
		
main:
	li $t0,0 #i
	li $t1,1 #auxiliar para desvios
	li $s1,1 #j
	li $s2,16 #n
	j for1

for1:
	slt $t2,$t0,$s2 #comparação entre t0 e s2
	bne $t2,$t1,label #em caso negativo, pula para label
	sw $s1,A($t0) #A[i] = j
	sub $t3,$s2,$t0 # subtrai t0 de s2
	sw $t3,B($t1) #B[i] = n-i
	addi $s1,$s1,1 #j++
	addi $t1,$t1,1 #i++
	j for1 #pula para o for1
		
label:
	li $t0,0 #carrega 0 em t0
	j for2 #pula para o for2
	
for2:
	slt $t2,$t0,$s1 #t0 < s2
	bne $t0,$t1,if #comparação entre t0 e t1, caso negativo, desvia para if
	lw $t3,A($t0) #carrega A[i]
	lw $t4,B($t0) #carrega B[i]
	mul $t3,$t3,$t4 #multiplica A[i] e B[i]
	sw $t3,C($t0) #C[i]=A[i]*B[i]
	addi $t1,$t1,1 #i++	
	
if:
	lw $t0,C(20) #carrega C[20]
	beq $t0,12,equal #se C[5] == 12 pula para equal
	addi $s1,$zero,1 #j (s1) recebe 1

equal:
	addi $s1,$zero,0 #j (s1) recebe 0
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	