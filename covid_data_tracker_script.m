%start fresh
close all;
clearvars;

state = 'alabama';

%read data file
data = xlsread([state,'-history.xlsx']);

%data collection window
startDate = 257;
endDate = 216;
days = startDate - endDate;

%fill lists
deathList = data(endDate:startDate,4);
deathConfList = data(endDate:startDate,5);
deathIncList = data(endDate:startDate,6);

hospitalizedList = data(endDate:startDate,8);
hospitalizedCumList = data(endDate:startDate,9);
hospitalizedCurList = data(endDate:startDate,10);
hospitalizedIncList = data(endDate:startDate,11);

positiveList = data(endDate:startDate,21);
positiveIncList = data(endDate:startDate,23);

totalTestResList = data(endDate:startDate,33);
totalTestResListInc = data(endDate:startDate,34);

%Calculate weekly nanmeans
week1DeathAvg = nanmean(deathList(1:7));
week2DeathAvg = nanmean(deathList(8:14));
week3DeathAvg = nanmean(deathList(15:21));
week4DeathAvg = nanmean(deathList(22:28));
week5DeathAvg = nanmean(deathList(29:35));
week6DeathAvg = nanmean(deathList(36:41));


week1DeathConfAvg = nanmean(deathConfList(1:7));
week2DeathConfAvg = nanmean(deathConfList(8:14));
week3DeathConfAvg = nanmean(deathConfList(15:21));
week4DeathConfAvg = nanmean(deathConfList(22:28));
week5DeathConfAvg = nanmean(deathConfList(29:35));
week6DeathConfAvg = nanmean(deathConfList(36:41));

week1DeathIncAvg = nanmean(deathIncList(1:7));
week2DeathIncAvg = nanmean(deathIncList(8:14));
week3DeathIncAvg = nanmean(deathIncList(15:21));
week4DeathIncAvg = nanmean(deathIncList(22:28));
week5DeathIncAvg = nanmean(deathIncList(29:35));
week6DeathIncAvg = nanmean(deathIncList(36:41));

week1HospAvg = nanmean(hospitalizedList(1:7));
week2HospAvg = nanmean(hospitalizedList(8:14));
week3HospAvg = nanmean(hospitalizedList(15:21));
week4HospAvg = nanmean(hospitalizedList(22:28));
week5HospAvg = nanmean(hospitalizedList(29:35));
week6HospAvg = nanmean(hospitalizedList(36:41));

week1HospCumAvg = nanmean(hospitalizedCumList(1:7));
week2HospCumAvg = nanmean(hospitalizedCumList(8:14));
week3HospCumAvg = nanmean(hospitalizedCumList(15:21));
week4HospCumAvg = nanmean(hospitalizedCumList(22:28));
week5HospCumAvg = nanmean(hospitalizedCumList(29:35));
week6HospCumAvg = nanmean(hospitalizedCumList(36:41));

week1HospCurAvg = nanmean(hospitalizedCurList(1:7));
week2HospCurAvg = nanmean(hospitalizedCurList(8:14));
week3HospCurAvg = nanmean(hospitalizedCurList(15:21));
week4HospCurAvg = nanmean(hospitalizedCurList(22:28));
week5HospCurAvg = nanmean(hospitalizedCurList(29:35));
week6HospCurAvg = nanmean(hospitalizedCurList(36:41));
week1HospIncAvg = nanmean(hospitalizedIncList(1:7));
week2HospIncAvg = nanmean(hospitalizedIncList(8:14));
week3HospIncAvg = nanmean(hospitalizedIncList(15:21));
week4HospIncAvg = nanmean(hospitalizedIncList(22:28));
week5HospIncAvg = nanmean(hospitalizedIncList(29:35));
week6HospIncAvg = nanmean(hospitalizedIncList(36:41));

week1PosAvg = nanmean(positiveList(1:7));
week2PosAvg = nanmean(positiveList(8:14));
week3PosAvg = nanmean(positiveList(15:21));
week4PosAvg = nanmean(positiveList(22:28));
week5PosAvg = nanmean(positiveList(29:35));
week6PosAvg = nanmean(positiveList(36:41));

week1PosIncAvg = nanmean(positiveIncList(1:7));
week2PosIncAvg = nanmean(positiveIncList(8:14));
week3PosIncAvg = nanmean(positiveIncList(15:21));
week4PosIncAvg = nanmean(positiveIncList(22:28));
week5PosIncAvg = nanmean(positiveIncList(29:35));
week6PosIncAvg = nanmean(positiveIncList(36:41));

week1TotalTestResAvg = nanmean(totalTestResList(1:7));
week2TotalTestResAvg = nanmean(totalTestResList(8:14));
week3TotalTestResAvg = nanmean(totalTestResList(15:21));
week4TotalTestResAvg = nanmean(totalTestResList(22:28));
week5TotalTestResAvg = nanmean(totalTestResList(29:35));
week6TotalTestResAvg = nanmean(totalTestResList(36:41));

week1TotalTestResIncAvg = nanmean(totalTestResListInc(1:7));
week2TotalTestResIncAvg = nanmean(totalTestResListInc(8:14));
week3TotalTestResIncAvg = nanmean(totalTestResListInc(15:21));
week4TotalTestResIncAvg = nanmean(totalTestResListInc(22:28));
week5TotalTestResIncAvg = nanmean(totalTestResListInc(29:35));
week6TotalTestResIncAvg = nanmean(totalTestResListInc(36:41));

%Make table
T = table(['Week1'; 'Week2'; 'Week3'; 'Week4'; 'Week5'; 'Week6'],[week1DeathAvg; week2DeathAvg; week3DeathAvg; week4DeathAvg; week5DeathAvg; week6DeathAvg],[week1DeathConfAvg; week2DeathConfAvg; week3DeathConfAvg; week4DeathConfAvg; week5DeathConfAvg; week6DeathConfAvg],[week1DeathIncAvg; week2DeathIncAvg; week3DeathIncAvg; week4DeathIncAvg; week5DeathIncAvg; week6DeathIncAvg],[week1HospAvg;week2HospAvg;week3HospAvg;week4HospAvg;week5HospAvg;week6HospAvg],[week1HospCumAvg;week2HospCumAvg;week3HospCumAvg;week4HospCumAvg;week5HospCumAvg,week6HospCumAvg],[week1HospCurAvg;week2HospCurAvg;week3HospCurAvg;week4HospCurAvg;week5HospCurAvg;week6HospCurAvg],[week1HospIncAvg;week2HospIncAvg;week3HospIncAvg;week4HospIncAvg;week5HospIncAvg;week6HospIncAvg],[week1PosAvg;week2PosAvg;week3PosAvg;week4PosAvg;week5PosAvg;week6PosAvg],[week1PosIncAvg;week2PosIncAvg;week3PosIncAvg;week4PosIncAvg;week5PosIncAvg;week6PosIncAvg],[week1TotalTesResAvg;week2TotalTestResAvg;week3TotalTestResAvg;week4TotalTestResAvg;week5TotalTestResAvg;week6TotalTestResAvg],[week1TotalTestResIncAvg;week2TotalTestResIncAvg;week3TotalTestResIncAvg;week4TotalTestResIncAvg;week5TotalTestResIncAvg;week6TotalTestResIncAvg]);


T.Properties.VariableNames = {'Week','Avg Death'; 'Avg Confirmed Death'; 'Avg Death Increase'; 'Avg Hospitalized'; 'Avg Cumulative Hospitalized'; 'Avg Current Hospitalized'; 'Avg Hospitalized Increase';'Avg Positive Tests';'Avg Positive Test Increase';'Avg Total Test Results';'Avg Total Test Results Increase'}

disp(T)

%save table
writetable(T,['C:\Users\ekw28\Documents\MATLAB',state,'.csv'],'Delimiter',',')