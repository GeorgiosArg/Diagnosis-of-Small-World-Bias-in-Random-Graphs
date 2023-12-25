function A=ConstructAnExpGraph(nodes,Alpha)
Alpha = -Alpha;   % Alpha of the scale-free graph
%define node degree distribution:
XAxis  = unique(round(logspace(0,log10(nodes),25)));
YAxis  = unique(round(logspace(0,log10(nodes),25))).^(Alpha+1);
% create the graph with the required node degree distribution:
Graph = mexGraphCreateRandomGraph(nodes,XAxis,YAxis,1);
el = Graph.Data; 
AdjM = zeros(nodes); ind = sub2ind(size(AdjM),el(:,1),el(:,2)); AdjM(ind)=1;
A=AdjM ;