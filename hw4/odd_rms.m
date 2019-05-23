function orms=odd_rms(n)
v=[1:2:2*n-1];
aux=v.*v;
x=mean(aux);
orms=sqrt(x);
end
