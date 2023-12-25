function [ distance ] = randomness( adj )
%randomness 
%

n = length(adj);
p = link_density(adj);

u=size(nchoosek(1:n,4),1);
g(1)=u*(p^3)*((1-p)^3)*12;
g(2)=u*(p^3)*((1-p)^3)*4;
g(3)=u*(p^4)*((1-p)^2)*3;
g(4)=u*(p^4)*((1-p)^2)*12;
g(5)=u*(p^5)*((1-p))*6;
g(6)=u*(p^6);
g=g/sum(g); 

f = FindRelativeFrequencyVector(adj);

distance = norm(f-g);

end

