function pina=TakeTheFrequencyVectors(n,p,k,m0)
load('pinba.mat');
pina=[];
%%%the normalized vectors for the random graph
u=size(combntns(1:n,4),1);
g(1)=u*(p^3)*((1-p)^3)*12;
g(2)=u*(p^3)*((1-p)^3)*4;
g(3)=u*(p^4)*((1-p)^2)*3;
g(4)=u*(p^4)*((1-p)^2)*12;
g(5)=u*(p^5)*((1-p))*6;
g(6)=u*(p^6);
g;
sum=0;
for bbb=1:6;
    sum=sum+g(bbb);
end
g=g/sum;    
pina=[pina;g];

load('pinba.mat');

for i=0:1:9;
    z=9+i*11+(k/2);
    pina=[pina;pin(z,:)];
end

if m0<=4
    for i=1:6;
        h=119+i*m0;
        pina=[pina;pin(h,:)];
    end
end















