seed=[0 1 1 1;
      1 0 1 1;
      1 1 0 1;
      1 1 1 0];



for z=1:4;
    k=zeros([267 1]);
for i=1:100;
    A= SFNG(50, z, seed);
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