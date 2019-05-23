function[A]=flip_it(M) 
[m,n]=size(M)
A=M(1,n:-1:1)
