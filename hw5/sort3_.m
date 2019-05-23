function v= sort3([x y z])

if x<=y && y<=z
   v=[x y z];
elseif x>=y && y>=z
    v=[z y x];
elseif y>=z && z>=x
    v=[x z y];
elseif y>=x && x>=z
  v=[z x y]
elseif x>=z && z>=y
   v=[y z x]
elseif z>=x && x>=y
    v=[y x z]
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