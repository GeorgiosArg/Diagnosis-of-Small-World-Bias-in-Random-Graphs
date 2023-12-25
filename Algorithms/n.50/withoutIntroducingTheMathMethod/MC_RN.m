TT=[];

for pith=0.1:0.1:0.9

k=zeros([267 1]);
for i=1:100;
    A=random_graph(50,pith);
    f=FindMotifsOfaGivenGraphImproved1(A);
    f=f/sum(f);
    t=1;
    dmin=eudistance(f,pin(1,:));
    for j=2:267;
        d=eudistance(f,pin(j,:));
        if d<dmin;
            dmin=d;
            t=j;
            
            
        end
        
        
    end
    k(t)=k(t)+1;
    
end

TT=[TT,k];
end