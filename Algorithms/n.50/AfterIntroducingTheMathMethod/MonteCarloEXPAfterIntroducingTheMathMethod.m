TT=[];
n=50;
for pith=0.1:0.1:0.9

kj=zeros([20 1]);
for i=1:100;
    A=random_graph(n,pith);
    f=FindMotifsOfaGivenGraphImproved1(A);
    f=f/sum(f);
    A=full(A);
    d=link_density(A);
    p=d;
    k=d*(n-1);
    k=k/2;
    k=round(k);
    k=2*k;
    pina=TakeTheFrequencyVectors1(n,p,k);
    d1=zeros(1,20);
    
    for j=1:20;
        
        d1(j)=eudistance(f,pina(j,:));
        
    end
    t=1;
    min=d1(1);
    
    for o1=2:20;
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

kj=zeros([20 1]);
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
    pina=TakeTheFrequencyVectors1(n,p,k);
    d1=zeros(1,20);
    
    for j=1:20;
        
        d1(j)=eudistance(f,pina(j,:));
        
    end
    t=1;
    min=d1(1);
    
    for o1=2:20;
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

for Alpha=2.1:0.1:2.9

kj=zeros([20 1]);
for i=1:100;
    A=ConstructAnExpGraph(n,Alpha);
    f=FindMotifsOfaGivenGraphImproved1(A);
    f=f/sum(f);
    A=full(A);
    d=link_density(A);
    p=d;
    k=d*(n-1);
    k=k/2;
    k=round(k);
    k=2*k;
    pina=TakeTheFrequencyVectors1(n,p,k);
    d1=zeros(1,20);
    
    for j=1:20;
        
        d1(j)=eudistance(f,pina(j,:));
        
    end
    t=1;
    min=d1(1);
    
    for o1=2:20;
        if (d1(o1)<min);
            min=d1(o1);
            t=o1;
        end
    end
    kj(t)=kj(t)+1;
    
    
    
    

end

TT=[TT,kj];
end