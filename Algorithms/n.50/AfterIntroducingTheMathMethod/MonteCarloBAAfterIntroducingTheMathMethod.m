%Monte Carlo after applying the math method

TT=[];
n=50;
for pith=0.1:0.1:0.9;
    
    zz=int16(pith/0.1);
    kj=zeros([17 1]);
for i=1:100;
    
    A = random_graph(n,pith);
    
    f=FindMotifsOfaGivenGraphImproved1(A);
    ccc=f(1)+f(2)+f(3)+f(4)+f(5)+f(6);
    f=f/ccc;
    A=full(A);
    d=link_density(A);
    p=d;
    k=d*(n-1);
    k=k/2;
    k=round(k);
    k=2*k;
    m0=(((d*(n-1)*n)/2)-4)/(n-4);m0=round(m0);
    
    pina=TakeTheFrequencyVectors(n,p,k,m0);
    
    if m0<=4
       mm=17;
    else
       mm=11;
    end
    
    d1=zeros(1,mm);
    
    for j=1:mm;
        
        d1(j)=eudistance(f,pina(j,:));
        
    end
    
    
    t=1;
    min=d1(1);
    
    for o1=2:mm;
        if (d1(o1)<min);
            min=d1(o1);
            t=o1;
        end
    end
    kj(t)=kj(t)+1;
    
end
    TT=[TT,kj];
end


n=50;

for pith=0:0.1:0.9;

for kk=2:2:48;

kj=zeros([17 1]);
for i=1:100;
    [Graph, NumberOfRewired] =GraphCreateSmallWorld(n,kk,pith);
    A=edgeL2adj(Graph.Data);
    f=FindMotifsOfaGivenGraphImproved1(A);
    f=f/sum(f);
    A=full(A);
    d=link_density(A);
    p=d;
    k=d*(n-1);
    k=k/2;
    k=round(k);
    k=2*k;
    pina=TakeTheFrequencyVectors(n,p,k,m0);
    if m0<=4
       mm=17;
    else
       mm=11;
    end
    
    d1=zeros(1,mm);
    
    for j=1:mm;
        
        d1(j)=eudistance(f,pina(j,:));
        
    end
    
    
    t=1;
    min=d1(1);
    
    for o1=2:mm;
        if (d1(o1)<min);
            min=d1(o1);
            t=o1;
        end
    end
    kj(t)=kj(t)+1;
    
    
end

TT=[TT,kj];

end
end

n=50;
%motif1
seed=[0 1 1 0;
      1 0 0 0;
      1 0 0 1;
      0 0 1 0];

for m0=1:4;
    
q=zeros([17 1]);

for i=1:100;
    A= SFNG(n, m0, seed);    
    f=FindMotifsOfaGivenGraphImproved1(A);
    ccc=f(1)+f(2)+f(3)+f(4)+f(5)+f(6);
    f=f/ccc;
    A=full(A);
    d=link_density(A);
    p=d;
    k=d*(n-1);
    k=k/2;
    k=round(k);
    k=2*k;
    m0=(((d*(n-1)*n)/2)-4)/(n-4);m0=round(m0);
    
    pina=TakeTheFrequencyVectors(n,p,k,m0);
    
    if m0<=4
       mm=17;
    else
       mm=11;
    end
    
    d1=zeros(1,mm);
    
    for j=1:mm;
        
        d1(j)=eudistance(f,pina(j,:));
        
    end
    
    
    t=1;
    min=d1(1);
    
    for o1=2:mm;
        if (d1(o1)<min);
            min=d1(o1);
            t=o1;
        end
    end
    
    q(t)=q(t)+1;
    
end
TT=[TT,q];

end
    
%motif2

seed=[0 1 1 1;
      1 0 0 0;
      1 0 0 0;
      1 0 0 0];

for m0=1:4;
    
q=zeros([17 1]);

for i=1:100;
    A= SFNG(n, m0, seed);    
    f=FindMotifsOfaGivenGraphImproved1(A);
    ccc=f(1)+f(2)+f(3)+f(4)+f(5)+f(6);
    f=f/ccc;
    A=full(A);
    d=link_density(A);
    p=d;
    k=d*(n-1);
    k=k/2;
    k=round(k);
    k=2*k;
    m0=(((d*(n-1)*n)/2)-4)/(n-4);m0=round(m0);
    
    pina=TakeTheFrequencyVectors(n,p,k,m0);
    
    if m0<=4
       mm=17;
    else
       mm=11;
    end
    
    d1=zeros(1,mm);
    
    for j=1:mm;
        
        d1(j)=eudistance(f,pina(j,:));
        
    end
    
    
    t=1;
    min=d1(1);
    
    for o1=2:mm;
        if (d1(o1)<min);
            min=d1(o1);
            t=o1;
        end
    end
    
    q(t)=q(t)+1;
    
end
TT=[TT,q];

end
    
%motif3
seed=[0 1 0 1;
      1 0 1 0;
      0 1 0 1;
      1 0 1 0];

for m0=1:4;
    
q=zeros([17 1]);

for i=1:100;
    A= SFNG(n, m0, seed);    
    f=FindMotifsOfaGivenGraphImproved1(A);
    ccc=f(1)+f(2)+f(3)+f(4)+f(5)+f(6);
    f=f/ccc;
    A=full(A);
    d=link_density(A);
    p=d;
    k=d*(n-1);
    k=k/2;
    k=round(k);
    k=2*k;
    m0=(((d*(n-1)*n)/2)-4)/(n-4);m0=round(m0);
    
    pina=TakeTheFrequencyVectors(n,p,k,m0);
    
    if m0<=4
       mm=17;
    else
       mm=11;
    end
    
    d1=zeros(1,mm);
    
    for j=1:mm;
        
        d1(j)=eudistance(f,pina(j,:));
        
    end
    
    
    t=1;
    min=d1(1);
    
    for o1=2:mm;
        if (d1(o1)<min);
            min=d1(o1);
            t=o1;
        end
    end
    
    q(t)=q(t)+1;
    
end
TT=[TT,q];

end
    
%motif4

seed=[0 1 1 1;
      1 0 0 0;
      1 0 0 1;
      1 0 1 0];

for m0=1:4;
    
q=zeros([17 1]);

for i=1:100;
    A= SFNG(n, m0, seed);    
    f=FindMotifsOfaGivenGraphImproved1(A);
    ccc=f(1)+f(2)+f(3)+f(4)+f(5)+f(6);
    f=f/ccc;
    A=full(A);
    d=link_density(A);
    p=d;
    k=d*(n-1);
    k=k/2;
    k=round(k);
    k=2*k;
    m0=(((d*(n-1)*n)/2)-4)/(n-4);m0=round(m0);
    
    pina=TakeTheFrequencyVectors(n,p,k,m0);
    
    if m0<=4
       mm=17;
    else
       mm=11;
    end
    
    d1=zeros(1,mm);
    
    for j=1:mm;
        
        d1(j)=eudistance(f,pina(j,:));
        
    end
    
    
    t=1;
    min=d1(1);
    
    for o1=2:mm;
        if (d1(o1)<min);
            min=d1(o1);
            t=o1;
        end
    end
    
    q(t)=q(t)+1;
    
end
TT=[TT,q];

end
    
%motif5

seed=[0 1 1 1;
      1 0 1 0;
      1 1 0 1;
      1 0 1 0];

for m0=1:4;
    
q=zeros([17 1]);

for i=1:100;
    A= SFNG(n, m0, seed);    
    f=FindMotifsOfaGivenGraphImproved1(A);
    ccc=f(1)+f(2)+f(3)+f(4)+f(5)+f(6);
    f=f/ccc;
    A=full(A);
    d=link_density(A);
    p=d;
    k=d*(n-1);
    k=k/2;
    k=round(k);
    k=2*k;
    m0=(((d*(n-1)*n)/2)-4)/(n-4);m0=round(m0);
    
    pina=TakeTheFrequencyVectors(n,p,k,m0);
    
    if m0<=4
       mm=17;
    else
       mm=11;
    end
    
    d1=zeros(1,mm);
    
    for j=1:mm;
        
        d1(j)=eudistance(f,pina(j,:));
        
    end
    
    
    t=1;
    min=d1(1);
    
    for o1=2:mm;
        if (d1(o1)<min);
            min=d1(o1);
            t=o1;
        end
    end
    
    q(t)=q(t)+1;
    
end
TT=[TT,q];

end
    
%motif6

seed=[0 1 1 1;
      1 0 1 1;
      1 1 0 1;
      1 1 1 0];

for m0=1:4;
    
q=zeros([17 1]);

for i=1:100;
    A= SFNG(n, m0, seed);    
    f=FindMotifsOfaGivenGraphImproved1(A);
    ccc=f(1)+f(2)+f(3)+f(4)+f(5)+f(6);
    f=f/ccc;
    A=full(A);
    d=link_density(A);
    p=d;
    k=d*(n-1);
    k=k/2;
    k=round(k);
    k=2*k;
    m0=(((d*(n-1)*n)/2)-4)/(n-4);m0=round(m0);
    
    pina=TakeTheFrequencyVectors(n,p,k,m0);
    
    if m0<=4
       mm=17;
    else
       mm=11;
    end
    
    d1=zeros(1,mm);
    
    for j=1:mm;
        
        d1(j)=eudistance(f,pina(j,:));
        
    end
    
    
    t=1;
    min=d1(1);
    
    for o1=2:mm;
        if (d1(o1)<min);
            min=d1(o1);
            t=o1;
        end
    end
    
    q(t)=q(t)+1;
    
end
TT=[TT,q];

end