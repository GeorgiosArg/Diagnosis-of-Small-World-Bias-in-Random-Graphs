clc;clear all;close all
load('Application (Stock Networks)/distances/distances.a=0.05.netsnum29.mat')
startDate = datenum('05-03-2004');
endDate = datenum('05-3-2009');
xData = linspace(startDate,endDate,29);
figure
plot(xData,dist,'o')
hold on
datetick('x','yyyy','keeplimits');
load('Application (Stock Networks)/distances/distances.a=0.03.netsnum29.mat')
plot(xData,dist,'*')
load('Application (Stock Networks)/distances/distances.a=0.1.netsnum29.mat')
plot(xData,dist,'v')
xlabel('Date')
ylabel('Randomness')
legend('a=0.05', 'a=0.03', 'a=0.1')
%title('randomness of network timeseries')