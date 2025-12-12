clear 
close all
clc

%%
load('M00570376.mat')
Data = irf(:,200);
plot(Data)
DC = mean(Data(1:200));
Data = Data-DC;
DataDownSam = Data(1:2:end);
iRFFinal = DataDownSam(1:400);
plot(iRFFinal)