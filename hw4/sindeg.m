function [sine,a]=sindeg(deg)
deg=degtorad(deg)
sine=sin(deg);
[m,n]=size(deg);
a=sum((sum(sine)))/(m*n);
end