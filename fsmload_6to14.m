clc; clear all;
[data6, xAxis6, yAxis6, zAxis6, misc6] = fsmload('w6AC.fsm');
'6'
[data7, xAxis7, yAxis7, zAxis7, misc7] = fsmload('w7AC.fsm');
'7'
[data8, xAxis8, yAxis8, zAxis8, misc8] = fsmload('w8AC.fsm');
'8'
[data9, xAxis9, yAxis9, zAxis9, misc9] = fsmload('w9AC.fsm');
'9'
[data10, xAxis10, yAxis10, zAxis10, misc10] = fsmload('w10AC.fsm');
'10'
[data11, xAxis11, yAxis11, zAxis11, misc11] = fsmload('w11AC.fsm');
'11'
[data12, xAxis12, yAxis12, zAxis12, misc12] = fsmload('w12AC.fsm');
'12'

nj=length(xAxis12) % number of rows in image
ni=length(yAxis12)  % mumber of columns
nt=ni*nj
data=cat(2,data6,data7,data8,data9,data10,data11,data12);
% set up x y coordinates for merged space
xAxis=cat(2,xAxis6,xAxis7,xAxis8,xAxis9,xAxis10,xAxis11,xAxis12);
yAxis=yAxis6;