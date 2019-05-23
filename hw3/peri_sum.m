function v =peri_sum(a)
v=sum(a(1,:))+sum(a(end,:))+sum(a(2:end-1,1))+sum(a(2:end-1,end))