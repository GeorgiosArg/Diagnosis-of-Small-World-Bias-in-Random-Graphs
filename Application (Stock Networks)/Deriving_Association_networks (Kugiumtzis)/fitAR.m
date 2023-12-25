function resV = fitAR(xV,p)
% resV = fitAR(xV,p)
% It gives the array of residuals from the fitting of AR(p) on the time
% series xV.
mx = mean(xV);
xxV = xV-mx;
armodel = arx(xxV,p);
tmpS = predict(armodel,xxV);
xpreV = tmpS+mx;
resV = xxV - xpreV;
