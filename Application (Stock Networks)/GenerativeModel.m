function [ind] = GenerativeModel(adj2M)
% This function finds the generative model of a network,
% taking into account the critical parameter density from the network in order
% to compute some of the parameters of the models Erdos-Renyi,
% Watts-Strogatz
% INPUT VARIABLES :
%  adj2M            : [matrix]     (nxn) adj2Macency matrix of a graph
%  
%
% OUTPUT VARIABLES: 
%
%  ind            : (scalar)      the index of the model
%
%   ind takes values in [1,20],
%   ind=1            for random network
%   ind=2, ..., 11   for small-world network with p=0, 0.1, ..., 0.9
%                   accordingly
%   ind=12, ..., 20  for exponential moedel with exp=2.1, 2.2, ..., 2.9


n = length(adj2M);

switch n
    case 25
        load('pinba.n25.mat');
        load('pinexp.n25.mat');
    case 50
        load('pinba.n50.mat');
        load('pinexp.n50.mat');
    case 55
        load('pinba.n55.mat');
        load('pinexp.n55.mat');
    case 75
        load('pinba.n75.mat');
        load('pinexp.n75.mat');
    otherwise
        [ pinba , pinexp ] = Construct_the_relatively_frequency_vectors(n);
end

f = FindRelativeFrequencyVector(adj2M);
density = link_density(adj2M);
pin = Take_frequency_vectors(n,density,pinexp);
t = size(pin,1);

distance_min = norm(pin(1,:)-f);
ind=1;
for i=2:t
    distance=norm(pin(i,:)-f);
    if distance<distance_min
        distance_min=distance;
        ind=i;
    end
end


end