.data
	#alocando espaço para os vetores
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
	slt $t2,$t0,$s2 #i<n
	bne $t2,$t1,label
	sw $s1,A($t0) #A[i] = j
	sub $t3,$s2,$t0 #n-i
	sw $t3,B($t1) #B[i] = n-i
	addi $s1,$s1,1 #j++
	addi $t1,$t1,1 #i++
	j for1
		
label:
	li $t0,0
	j for2
	
for2:
	slt $t2,$t0,$s1 #i<n
	bne $t0,$t1,if
	lw $t3,A($t0)
	lw $t4,B($t0)
	mul $t3,$t3,$t4
	sw $t3,C($t0) #C[i]=A[i]*B[i]
	addi $t1,$t1,1 #i++	
	
if:
	lw $t0,C(20)
	beq $t0,12,equal #C[5] == 12
	addi $s1,$zero,1 #j=1

equal:
	addi $s1,$zero,0 #j=0
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	