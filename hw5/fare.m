function f=fare(dist,age)
  if ~isinteger(dist)
     dist= round(dist);
  end
  
  if dist<=1
    f=2;
   elseif dist>1 && dist<=10
     f=2+(dist-1)*0.25;
  
  elseif dist>10
    f=2+(9*0.25)+(dist-10)*0.10;
    
  end


if age>=60 || age<=18
    f=0.8*f
end

    

    
    
    
