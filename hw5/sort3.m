function (a,b,c)= sort3([x, y, z])
a=zeros(1,3)
if x<=y && y<=z
    a=x;
    b=y;
    c=z;
elseif x>=y && y>=z
    a=z;
    b=y;
    c=x;
elseif y>=z && z>=x
    a=x;
    b=z;
    c=y;
elseif y>=x && x>=z
    a=z;
    b=x;
    c=y;
elseif x>=z && z>=y
    a=y;
    b=z;
    c=x;
elseif z>=x && x>=y
    a=y;
    b=x;
    c=z;
   
end

    
 
% if x<=y && x<=z
%     a=x;
% 
% elseif x>=y && x<=z
%     b=x;
%     
% else
%     c=x;
% end
% 
% if y<=x && y<=z
%     a=y;
%     
%     elseif y>=x && y<=z
%     b=x;
%     
% else
%     c=y;
% end
%     if z<=x && z<=y
%     a=y;
%     
%     elseif z>=x && z<=y
%     b=x;
%     
% else
%     c=z;
% end