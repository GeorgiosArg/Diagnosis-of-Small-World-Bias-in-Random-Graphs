n=50;
f=[];

for alpha=2.1:0.1:2.9;

sum1f=[0 0 0 0 0 0];

for b=1:100;
    A=ConstructAnExpGraph(n,alpha);
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
s=sum(sum1f);
ft=sum1f/s;
f=[f;ft];
end