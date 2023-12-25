function [ pin_ba , pin_exp ] = Constract_the_relatively_frequency_vectors(n)
%the_relatively_frequency_vectors : 
%input : the size of a network

%output : the relative frequency vectors of the models Erdos-Renyi(p) ,
%         Watts-Strogatz (k,p) , Barabasi-Albert (initial_motif, m0),
%         Exponential (exp)


%First 9 vectors are for E-R model as p=0.1, 0.2, ..., 0.9 (combinatorial methods are used)
%Following 10x(possible_k_values/2) vectors are for Watts-Strogatz Model

% exp case : final 9 vectors of exponential model as exp = 2.1, 2.2, ..., 2.9
% ba case  : final 6x4 vectors as initial motif is mi = m1, m2, ..., m6 and
%            m0 = 1,2,3,4






pin = [];
m = 100; %number of nets

%%possible values of k depend on n(=network size)
if mod(n,2)==0;
    possible_k_values = n-2;
else
    possible_k_values = n-1;
end
%%frequency vector for the E-r model


for p=0.1:0.1:0.9;

f=[0 0 0 0 0 0];

k=size(nchoosek(1:n,4),1);

f(1)=k*(p^3)*((1-p)^3)*12;
f(2)=k*(p^3)*((1-p)^3)*4;
f(3)=k*(p^4)*((1-p)^2)*3;
f(4)=k*(p^4)*((1-p)^2)*12;
f(5)=k*(p^5)*((1-p))*6;
f(6)=k*(p^6);

f=m*f;

S=sum(f);

f=f/S;
pin =[pin; f];
end

%%frequency vectors for WS model

for pith=0:0.1:0.9;

for zz=2:2:possible_k_values;
   
sum1f=[0 0 0 0 0 0];



for b=1:m;
    [Graph, NumberOfRewired] =GraphCreateSmallWorld(n,zz,pith);
    A=edgeL2adj(Graph.Data);
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;

end
S=sum(sum1f);
ft=sum1f/S;
pin=[pin;ft];
end
end

pin_exp=pin;
pin_ba=pin;


%%frequency vector for the SF model

%%%%seed=1
seed=[0 1 0 1;
      1 0 0 0;
      0 0 0 1;
      1 0 1 0];
  
for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:m;
    A= SFNG(n, z, seed);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pin_ba=[pin_ba;ft];
end

%seed=2
seed=[0 1 1 1;
      1 0 0 0;
      1 0 0 0;
      1 0 0 0];
  
for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:m;
    A= SFNG(n, z, seed);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pin_ba=[pin_ba;ft];
end

%seed=3
seed=[0 1 0 1;
      1 0 1 0;
      0 1 0 1;
      1 0 1 0];
  
for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:m;
    A= SFNG(n, z, seed);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pin_ba=[pin_ba;ft];
end

%seed=4
seed=[0 1 1 1;
      1 0 0 0;
      1 0 0 1;
      1 0 1 0];
  
for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:m;
    A= SFNG(n, z, seed);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pin_ba=[pin_ba;ft];
end

%seed=5
seed=[0 1 1 1;
      1 0 1 0;
      1 1 0 1;
      1 0 1 0];
  
for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:m;
    A= SFNG(n, z, seed);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pin_ba=[pin_ba;ft];
end

%seed=6
seed=[0 1 1 1;
      1 0 1 1;
      1 1 0 1;
      1 1 1 0];
  
for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:m;
    A= SFNG(n, z, seed);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pin_ba=[pin_ba;ft];
end

%%%%frequency vectors for the exp model

for alpha=2.1:0.1:2.9;

sum1f=[0 0 0 0 0 0];

for b=1:m;
    A=ConstructAnExpGraph(n,alpha);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pin_exp=[pin_exp; ft];
end


end

