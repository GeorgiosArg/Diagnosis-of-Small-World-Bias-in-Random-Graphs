function [ pin ] = Take_frequency_vectors(n,d,pinexp)
%This function takes the relative frequency vectors of the models
%if the parameter density is known.
%  INPUT VARIABLES:
%       n         : [scalar]    network size
%       d         : [scalar]    network density
%     pinexp      : [matrix]    [(9+possible_k_values+9)x6] 
%
%
%
%
%

pin=[];
%parameter p,k calculation
p=d;
k=d*(n-1);k=k/2;k=round(k);k=2*k;

if mod(n,2)==0;
    possible_k_values = n-2;
else
    possible_k_values = n-1;
end


possible_tetrads = size(nchoosek(1:n,4),1);
g = [possible_tetrads*(p^3)*((1-p)^3)*12, possible_tetrads*(p^3)*((1-p)^3)*4, possible_tetrads*(p^4)*((1-p)^2)*3, possible_tetrads*(p^4)*((1-p)^2)*12, possible_tetrads*(p^5)*((1-p))*6, possible_tetrads*(p^6)];

g=g/sum(g);

pin=[pin;g];


for i=0:1:9;
    z=9+i*(possible_k_values/2)+(k/2);
    pin=[pin;pinexp(z,:)];
end

t1 = size(pinexp,1)-8;
t2 = size(pinexp,1);

for i=t1:t2
    pin=[pin;pinexp(i,:)];
end


end

