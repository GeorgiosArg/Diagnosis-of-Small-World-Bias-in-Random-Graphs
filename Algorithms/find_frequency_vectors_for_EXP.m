%%%%frequency vectors for the exp model
n=75; %number of nodes
m=50; %number of nets
pinexp=[];
for alpha=2.1:0.1:2.9;

sum1f=[0 0 0 0 0 0];

for b=1:m;
    A=ConstructAnExpGraph(n,alpha);
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pinexp=[pinexp; ft];
end

