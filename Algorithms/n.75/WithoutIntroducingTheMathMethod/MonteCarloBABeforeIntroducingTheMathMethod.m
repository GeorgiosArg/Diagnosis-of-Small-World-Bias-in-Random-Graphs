%%MonteCarlo BarabasiAlbert Before Introducing the mathematical method
load('pinba.mat');
TT=[];
n=75;%network size 
m=50; %number of nets

for pith=0.1:0.1:0.9;
    
    kj=zeros([403 1]);
    
   for i=1:m;
       A=random_graph(n,pith);
       f=FindMotifsOfaGivenGraphImproved1(A);
       f=f/sum(f);
       t=1;
       dmin=eudistance(f,pin(1,:));
       for j=2:403
           
           
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

        k=zeros([403 1]);
        for b=1:m;

            [Graph, NumberOfRewired] =GraphCreateSmallWorld(n,zz,pith);
            A=edgeL2adj(Graph.Data);
            f=FindMotifsOfaGivenGraphImproved1(A);
            fg=f/sum(f);
            t=1;
            dmin=eudistance(fg,pin(1,:));
            for j=2:403;
               d=eudistance(fg,pin(j,:)); 
               if d<dmin;
                   dmin=d;
                   t=j;
               end
                
            end
            
            k(t)=k(t)+1
            
        end
        
        TT=[TT,k]; 
    end 
end


%motif1

seed=[0 1 1 0;
      1 0 0 0;
      1 0 0 1;
      0 0 1 0];



for z=1:4;
    k=zeros([403 1]);
for i=1:m;
    A= SFNG(n, z, seed);
    f=FindMotifsOfaGivenGraphImproved1(A);
    f=f/sum(f);
    t=1;
    dmin=eudistance(f,pin(1,:));
    for j=2:403;
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

%motif2

seed=[0 1 1 1;
      1 0 0 0;
      1 0 0 0;
      1 0 0 0];



for z=1:4;
    k=zeros([403 1]);
for i=1:m;
    A= SFNG(n, z, seed);
    f=FindMotifsOfaGivenGraphImproved1(A);
    f=f/sum(f);
    t=1;
    dmin=eudistance(f,pin(1,:));
    for j=2:403;
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


%motif3

seed=[0 1 0 1;
      1 0 1 0;
      0 1 0 1;
      1 0 1 0];



for z=1:4;
    k=zeros([403 1]);
for i=1:m;
    A= SFNG(n, z, seed);
    f=FindMotifsOfaGivenGraphImproved1(A);
    f=f/sum(f);
    t=1;
    dmin=eudistance(f,pin(1,:));
    for j=2:403;
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


%motif4

seed=[0 1 1 1;
      1 0 0 0;
      1 0 0 1;
      1 0 1 0];



for z=1:4;
    k=zeros([403 1]);
for i=1:m;
    A= SFNG(n, z, seed);
    f=FindMotifsOfaGivenGraphImproved1(A);
    f=f/sum(f);
    t=1;
    dmin=eudistance(f,pin(1,:));
    for j=2:403;
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

%motif5

seed=[0 1 1 1;
      1 0 1 0;
      1 1 0 1;
      1 0 1 0];



for z=1:4;
    k=zeros([403 1]);
for i=1:m;
    A= SFNG(n, z, seed);
    f=FindMotifsOfaGivenGraphImproved1(A);
    f=f/sum(f);
    t=1;
    dmin=eudistance(f,pin(1,:));
    for j=2:403;
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

%motif6

seed=[0 1 1 1;
      1 0 1 1;
      1 1 0 1;
      1 1 1 0];



for z=1:4;
    k=zeros([403 1]);
for i=1:m;
    A= SFNG(n, z, seed);
    f=FindMotifsOfaGivenGraphImproved1(A);
    f=f/sum(f);
    t=1;
    dmin=eudistance(f,pin(1,:));
    for j=2:403;
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
