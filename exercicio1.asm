li s1, 3  #a = 3
li s2, 2  #b = 2
li s3, 8  #c = 8
li s4, 0  #d = 0

add s4, s1, s2  #d = a + b
sub s4, s4, s3  #d = d - c

and t1, s4, s2  #t1 = d & b
or s4, t1, s3	#d = t1 | c
add t1, s2, s3	#t1 = b + c
xor s3, s1, t1  #c = a ^ t1
or t1, s4, s3	#t1 = d | c 
andi s4, t1, 25 #d = t1 & 25
xori t1, s4, 10	#t1 = d ^ 10
xori t2, s4, 20	#t2 = d ^ 20
or s4, t1, t2   #d = t1 | t2

nop #nada
