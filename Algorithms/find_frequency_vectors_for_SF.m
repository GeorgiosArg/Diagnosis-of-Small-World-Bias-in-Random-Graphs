%%frequency vector for the SF model

m=100; %number of nets
n=75; %number of nodes

pinba=[];
%%%%seed=1
seed=[0 1 0 1;
      1 0 0 0;
      0 0 0 1;
      1 0 1 0];
  
for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:m;
    A= SFNG(n, z, seed);
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pinba=[pinba;ft];
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
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pinba=[pinba;ft];
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
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pinba=[pinba;ft];
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
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pinba=[pinba;ft];
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
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pinba=[pinba;ft];
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
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
S=sum(sum1f);
ft=sum1f/S;
pinba=[pinba;ft];
end