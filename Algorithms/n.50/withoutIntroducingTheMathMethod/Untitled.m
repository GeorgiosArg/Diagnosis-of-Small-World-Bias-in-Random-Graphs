clc;close all;clear all;
x=[];
load('aksiopistia_methodou_EXP.mat');
%successfull maps of ER networks

for i=1:9
    x=[x; TT(i,i)];
end
y=[];
%average successfull maps over k of WS networks 
%as p of disturbance equals zero
for i=10:33
    y=[y;TT(i,i)];
end
y=mean(y);
x=[x; y];

%average successfull maps over k for other values of p disturbance as
%p=0.1, ... 0.8
for i=34:225
    y(i-33)=TT(i,i)+TT(i-1,i)+TT(i+1,i)+TT(i+24,i)+TT(i+24-1,i)+TT(i+24+1,i)+TT(i-24,i)+TT(i-24-1,i)+TT(i-24+1,i);
end

for i=24:24:192
    z=y(i-23:i);
    z=mean(z);
    x=[x;z];
end

%averaqe successfull maps over k for p disturbance equals to 0.9
for i=226:249
    y(i-225)=TT(i,i)+TT(i-1,i)+TT(i+1,i)+TT(i-24,i)+TT(i-24-1,i)+TT(i-24+1,i);
end

z=mean(y);
x=[x; z];
models = {'RN(0.1)','RN(0.2)','RN(0.3)','RN(0.4)','RN(0.5)','RN(0.6)','RN(0.7)','RN(0.8)','RN(0.9)','WS(0.0)','WS(0.1)','WS(0.2)','WS(0.3)','WS(0.4)','WS(0.5)','WS(0.6)','WS(0.7)','WS(0.8)','WS(0.9)'};

figure(1); hold on
bar(x)
set(gca,'XTick',1:19,'XTickLabel',models)
xlabel('Network models');
ylabel('Success rate');
title('SF is the fundamental scale free model');

