function M=reverse_diag(n)
A=rand(n);
B=A*inv(A);
M=(B(n:-1:1,1:n)); %flip(B) faz a mesma função%
end