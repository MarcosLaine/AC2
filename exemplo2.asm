/*
if(a == b){
    a++
}else{
    b++
}
a=a+b
b = a-a

*/

li s1, 3
li s2, 3

bne s1, s2 false
true: addi, s1, s1, 1
j fimDoIf

false: addi, s2, s2, 1


fimDoIf: add s1, s1, s2
sub s2, s1, s1