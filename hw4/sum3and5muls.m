function s=sum3and5muls(n) 
a=(3:3:n);
b=(5:5:n);
c=(15:15:n);
s=sum(a)+sum(b)-sum(c);
end