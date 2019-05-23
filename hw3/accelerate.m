function amag = accelerate(F1,F2,m)
v=F1+F2
a=v.*v
amag=(sqrt(sum(a)))/m 
