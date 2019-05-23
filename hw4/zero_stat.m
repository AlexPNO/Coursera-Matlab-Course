function p= zero_stat(A)
[m,n]=size(A);
v=sum(sum(A));
x=(m*n)-v
p=(x/(m*n))*100;
end
