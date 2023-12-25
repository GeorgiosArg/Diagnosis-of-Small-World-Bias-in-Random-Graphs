function f=FindMotifsOfaGivenGraph(A)

m1=[0 1 1 0;
   1 0 0 0;
   1 0 0 1;
   0 0 1 0];

Motif_id = find_motif34(m1);

Motif_matricesm1 = find_motif34(Motif_id,4);
%______________________________________%
m2=[0 1 1 1;
    1 0 0 0;
    1 0 0 0;
    1 0 0 0];

Motif_id = find_motif34(m2);

Motif_matricesm2 = find_motif34(Motif_id,4);
%______________________________________%
m3=[0 1 1 0;
    1 0 0 1;
    1 0 0 1;
    0 1 1 0];

Motif_id = find_motif34(m3);

Motif_matricesm3 = find_motif34(Motif_id,4);
%______________________________________%
m4=[0 1 1 0;
    1 0 1 0;
    1 1 0 1;
    0 0 1 0];

Motif_id = find_motif34(m4);

Motif_matricesm4 = find_motif34(Motif_id,4);
%_______________________________________%
m5=[0 1 1 1;
    1 0 0 1;
    1 0 0 1;
    1 1 1 0];

Motif_id = find_motif34(m5);

Motif_matricesm5 = find_motif34(Motif_id,4);
%_______________________________________%
m6=[0 1 1 1;
    1 0 1 1;
    1 1 0 1;
    1 1 1 0];

Motif_id = find_motif34(m6);

Motif_matricesm6 = find_motif34(Motif_id,4);

f=[0 0 0 0 0 0];

n=length(A);

for i=1:(n-3);
    for j=(i+1):(n-2);
        for k=(j+1):(n-1);
            for l=(k+1):n;
                m=[  0      A(i,j)  A(i,k)  A(i,l);
                   A(j,i)     0     A(j,k)  A(j,l);
                   A(k,i)   A(k,j)    0     A(k,l);
                   A(l,i)   A(l,j)  A(l,k)    0   ];
                   
                   for p=1:12;
                       if (m==Motif_matricesm1(:,:,p));
                           f(1)=f(1)+1;
                       end
                   end
                   
                   for pp=1:4;
                       if (m==Motif_matricesm2(:,:,pp));
                           f(2)=f(2)+1;
                       end
                   end
                   
                   for ppp=1:3
                       if (m==Motif_matricesm3(:,:,ppp));
                           f(3)=f(3)+1;
                       end
                   end
                   
                   for pppp=1:12
                       if (m==Motif_matricesm4(:,:,pppp));
                           f(4)=f(4)+1;
                       end
                   end
                   
                   for ppppp=1:6
                       if (m==Motif_matricesm5(:,:,ppppp));
                           f(5)=f(5)+1;
                       end
                   end
                   
                
                   if (m==Motif_matricesm6(:,:,1));
                       f(6)=f(6)+1;
                   end
                   
                   
                                        
                   
                    
                    
                
                
            end
        end
    end
end
