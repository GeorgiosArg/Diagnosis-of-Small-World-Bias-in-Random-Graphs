 
clear all;
close all;

pin=[];
m=100; %number of nets
n=50; %network size

for p=0.1:0.1:0.9;

f=[0 0 0 0 0 0];

k=size(combntns(1:n,4),1);

f(1)=k*(p^3)*((1-p)^3)*12;
f(2)=k*(p^3)*((1-p)^3)*4;
f(3)=k*(p^4)*((1-p)^2)*3;
f(4)=k*(p^4)*((1-p)^2)*12;
f(5)=k*(p^5)*((1-p))*6;
f(6)=k*(p^6);

f=m*f;

S=sum(f);

f=f/S;
pin =[pin; f];
end
