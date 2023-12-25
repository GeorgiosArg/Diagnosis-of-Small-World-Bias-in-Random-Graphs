
clear all;
close all;

f=[0 0 0 0 0 0];

m=input(' Give the number of the networks: ');
n=input(' Give the number of nodes each network has: ');
p=input(' Give the probability for an edge to occur bettween every pair of nodes: ');

k=nchoosek(n,4);

f(1)=k*(p^3)*((1-p)^3)*12;
f(2)=k*(p^3)*((1-p)^3)*4;
f(3)=k*(p^4)*((1-p)^2)*3;
f(4)=k*(p^4)*((1-p)^2)*12;
f(5)=k*(p^5)*((1-p))*6;
f(6)=k*(p^6);

f=m*f;

sum=sum(f);

f=f/sum;