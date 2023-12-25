n=50
f=[];

for pith=0:0.1:0.9;

for zz=2:2:48;
    
sum1f=[0 0 0 0 0 0];

for b=1:100;
    [Graph, NumberOfRewired] =GraphCreateSmallWorld(n,zz,pith);
    A=edgeL2adj(Graph.Data);
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
s=sum(sum1f);
ft=sum1f/s;
f=[f;ft];
end
end