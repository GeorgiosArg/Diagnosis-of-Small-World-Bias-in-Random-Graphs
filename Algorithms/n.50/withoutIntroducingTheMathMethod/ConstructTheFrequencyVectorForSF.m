%Construct the Frequency vectors for SF BA Model for n=50

f=[];
%motif1
seed=[0 1 1 0;
      1 0 0 0;
      1 0 0 1;
      0 0 1 0];

for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:100;
    A= SFNG(50, z, seed);
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
s=sum(sum1f);
ft=sum1f/s;
f=[f;ft];
end



%motif2

seed=[0 1 1 1;
      1 0 0 0;
      1 0 0 0;
      1 0 0 0];
  
  for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:100;
    A= SFNG(50, z, seed);
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
s=sum(sum1f);
ft=sum1f/s;
f=[f;ft];
end
  
%motif3
seed=[0 1 0 1;
      1 0 1 0;
      0 1 0 1;
      1 0 1 0];
  
  for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:100;
    A= SFNG(50, z, seed);
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
s=sum(sum1f);
ft=sum1f/s;
f=[f;ft];
  end

  %motif4

seed=[0 1 1 1;
      1 0 0 0;
      1 0 0 1;
      1 0 1 0];
    
  for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:100;
    A= SFNG(50, z, seed);
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
s=sum(sum1f);
ft=sum1f/s;
f=[f;ft];
  end

      
%motif5

seed=[0 1 1 1;
      1 0 1 0;
      1 1 0 1;
      1 0 1 0];

   for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:100;
    A= SFNG(50, z, seed);
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
s=sum(sum1f);
ft=sum1f/s;
f=[f;ft];
  end 
  
  
  
  
  
  
%motif6
seed=[0 1 1 1;
      1 0 1 1;
      1 1 0 1;
      1 1 1 0];

for z=1:4;
sum1f=[0 0 0 0 0 0];
for b=1:100;
    A= SFNG(50, z, seed);
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    
end
s=sum(sum1f);
ft=sum1f/s;
f=[f;ft];
end