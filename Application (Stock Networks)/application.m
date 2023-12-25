clear all; close all; clc;

%Stock market application
K = 55;%network size (number of nodes of the networks)

dattxt = 'stocks';
load AllMarkets.dat;
nameM = textread('AllMarketsNames.txt','%s');

%dismiss stochastic trends
x=[];
for i=1:55
y=zeros([1305 1]);
for t=2:1305
    y(t-1)=log(AllMarkets(t,i))-log(AllMarkets(t-1,i));
end
x=[x,y];

end

%autoregressive model prewhitening
p=20;%the model's order for prewhitening
residuals=[];

for i=1:55
    res=fitAR(x(:,i),p);
    residuals=[residuals,res];
end

xM=residuals;

adj_matrices(55,55,27)=0;

data_seperation=45;% the number of returns of each subdataset/time window


%create the adjacency matrices

M = 100;%parameter of the significance test
maxtau = 10;%max time lag
alpha = 0.05;%significance level for the significance test used 
%in order to conclude if the cross-correlation is statistically significant
zalpha = norminv(1-alpha/2);
tau = 0;%lag time
ind=0;
for nets=1:(1305/data_seperation)
    data=xM((nets-1)*data_seperation+1:nets*data_seperation,:);
    [n,m]=size(data);
    rand('state',0)
    iV = randperm(m);
    ccM = NaN*ones(K,K);
    p1M = NaN*ones(K,K);
    [ccM,p1M] = corrcoef(data);
    p2M = NaN*ones(K,K);
    ccsurT = NaN*ones(M,K,K);
    ccsurT(1,:,:) = ccM;
    for i=1:M
        zM = NaN*ones(n-1,K);
        for j=1:K
            randindx = unidrnd(n-maxtau);
            isurV = [randindx+1:n-1 1:randindx]';
            zM(:,j) = xM(isurV,j);  
        end
        ccsurT(i+1,:,:) = corrcoef(zM);
    end
    for ik=1:K-1
        for jk=ik+1:K
            rxyV = squeeze(ccsurT(:,ik,jk));
            p2M(ik,jk) = resampledpvalue(rxyV,1);
            p2M(jk,ik) = p2M(ik,jk);
        end
    end
    
    [iiV,jjV]=find(p2M < alpha);
    adj2M = zeros(K,K); 
    for i=1:length(iiV) 
        adj2M(iiV(i),jjV(i))=1;
    end
    adj_matrices(:,:,nets) = adj2M;
    distR(nets) = randomness( adj2M );
end