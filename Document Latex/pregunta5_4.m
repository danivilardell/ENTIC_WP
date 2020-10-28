serialPort = serial('COM3');
fopen(SerialPort);
format = '%d'; %//the format of the files that we want to read.
size = 1000; %values that we want to read.
F = fscanf(serialPort,format,size);
t=1; %Actual time
d=1; %density of water
S=0.2; %Sensibility
g=9.8; %gravity
Gain=156.5; %Gain of Amplificator
F = ((F.*5)./(1023*Gain*S*d*g)); %This order transform our values on A to depths
