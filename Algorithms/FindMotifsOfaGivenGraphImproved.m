function f=FindMotifsOfaGivenGraphImproved(A)

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
