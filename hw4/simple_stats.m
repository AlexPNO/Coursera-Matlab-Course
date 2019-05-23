function S=simple_stats(N)
S(:,1)=mean(N');
S(:,2)=median(N');
S(:,3)=min(N');
S(:,4)=max(N');
end
