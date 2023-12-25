function f=FindMotifsOfaGivenGraphImproved1(A)

n=length(A);                                    %number of vertices in A
As=A|A.';                                       %symmetric adjacency matrix
f=[0 0 0 0 0 0];
for i=1:n-3                                     %loop i 1:n-2
    V1=[false(1,i) As(i,i+1:n)];                %v1: neibs of i (>i)
    for j=find(V1)
        V2=[false(1,i) As(j,i+1:n)];           %V2: all neibs of j (>i)
        V2(V1)=0;                               %not already in V1
        V2=V2|([false(1,j) As(i,j+1:n)]);       %and all neibs of i (>j)
        for k=find(V2)
            vz=max(j,k);                      %vz: largest rank node
            V3=([false(1,i) As(k,i+1:n)]);     %v3: all neibs of k (>i)
            V3(V2)=0;                           %not already in V1&V2
            V3=V3|([false(1,k) As(j,k+1:n)]);   %and all neibs of j (>v2)
            V3(V1)=0;                           %not already in V1
            V3=V3|([false(1,vz) As(i,vz+1:n)]); %and all neibs of i (>vz)
            for l=find(V3)

				m=[  0      A(i,j)  A(i,k)  A(i,l);
                   A(j,i)     0     A(j,k)  A(j,l);
                   A(k,i)   A(k,j)    0     A(k,l);
                   A(l,i)   A(l,j)  A(l,k)    0   ];
                   
                dd=[sum(m(1,:)) sum(m(2,:)) sum(m(3,:)) sum(m(4,:))];
                dd=sort(dd,'descend');
                if isequal(dd,[2,2,1,1])
                    f(1)=f(1)+1;
                elseif isequal(dd,[3,1,1,1])
                    f(2)=f(2)+1;
                elseif isequal(dd,[2,2,2,2])
                    f(3)=f(3)+1;
                elseif isequal(dd,[3,2,2,1])
                    f(4)=f(4)+1;
                elseif isequal(dd,[3,3,2,2])
                    f(5)=f(5)+1;
                elseif isequal(dd,[3,3,3,3])
                    f(6)=f(6)+1;
                end

				
            end
        end
    end
end