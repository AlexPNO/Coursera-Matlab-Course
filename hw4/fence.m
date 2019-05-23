function [nseg,pole]=fence(lng,seg)
nseg=ceil(lng/seg);
pole=nseg+1;
end
