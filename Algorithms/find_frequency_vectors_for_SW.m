pin=[];
m=50; %number of nets
n=75; %network size

%%possible values of k depend on n(=network size)
if mod(n,2)==0;
    pvk=n-2;
else
    pvk=n-1;
end
%%frequency vectors for WS model

for pith=0:0.1:0.9;
o=pith*10;
o=int64(o);
o=int2str(o);
s1='g.pith';
s2=strcat(s1,o);
for zz=2:2:pvk;
   
sum1f=[0 0 0 0 0 0];
st1=int2str(zz);
s3=strcat('.k',st1);
s=strcat(s2,s3);


for b=1:m;
    [Graph, NumberOfRewired] =GraphCreateSmallWorld(n,zz,pith);
    A=edgeL2adj(Graph.Data);
    n=length(A);
    fg=FindMotifsOfaGivenGraphImproved1(A);
    sum1f=sum1f+fg;
    st=int2str(b);
    s4=strcat(s,'.');
    s5=strcat(s4,st);
    save(s5,'fg');
end
S=sum(sum1f);
ft=sum1f/S;
pin=[pin;ft];
end
end

pinexp=pin;
pinba=pin;
