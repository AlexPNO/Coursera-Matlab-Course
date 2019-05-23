function [A]= top_right(a,b)
[m,n]=size(a)
A=a(1:b,end+1-b:n)