%%Monte Carlo EXP before introducing the Math Method
load('pinexp.mat');
TT=[];
m=50; %number of nets
n=75;%network size

for pith=0.1:0.1:0.9;
    
    kj=zeros([388 1]);
    
   for i=1:m;
       A=random_graph(n,pith);
       f=FindMotifsOfaGivenGraphImproved1(A);
       f=f/sum(f);
       t=1;
       dmin=eudistance(f,pin(1,:));
       
       for j=2:388
           
           
           d=eudistance(f,pin(j,:));
           if d<dmin;
               dmin=d;
               t=j;
           end
           
           
       end
       kj(t)=kj(t)+1;
   end
    
   TT=[TT,kj]; 
end

for pith=0:0.1:0.9
    
    for zz=2:2:75;

        kj=zeros([388 1]);
        for b=1:m;
            [Graph, NumberOfRewired] =GraphCreateSmallWorld(n,zz,pith);
            A=edgeL2adj(Graph.Data);
            f=FindMotifsOfaGivenGraphImproved1(A);
            fg=f/sum(f);
            t=1;
            dmin=eudistance(fg,pin(1,:));
            for j=2:388;
               d=eudistance(fg,pin(j,:)); 
               if d<dmin;
                   dmin=d;
                   t=j;
               end
                
            end
            
            kj(t)=kj(t)+1
            
        end
        
        TT=[TT,kj]; 
    end 
end

for alpha=2.1:0.1:2.9;
    kj=zeros([388 1]);
    for b=1:m;
        A=ConstructAnExpGraph(n,alpha);
        f=FindMotifsOfaGivenGraphImproved1(A);
        a8roisma=sum(f);
        fg=f/a8roisma;
        t=1;
        dmin=eudistance(fg,pin(1,:));
        for j=2:388;
            d=eudistance(fg,pin(j,:));
            if d<dmin;
                dmin=d;
                t=j;
            end
        end
        kj(t)=kj(t)+1;
    end
    TT=[TT,kj];
    
end