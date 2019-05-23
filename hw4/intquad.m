function [A]=intquad(n,m)
A(1:n,1:m)=zeros(n,m);
A(n+1:2*n,1:m)=2*ones(n,m);
A(1:n,m+1:2*m)=ones(n,m);
A(n+1:2*n,m+1:2*m)=3*ones(n,m);
end