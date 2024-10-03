/*
int fatorial(int n){
    if(n<1)
        return 1
    return n*fatorial(n-1)
}

int main(){
    int x = fatorial(5)
    return 0
}   
*/

.text
.globl _start

_start:
li a0, 5
jal Fatorial
mv s1, a0 #x = a0

Fatorial:
