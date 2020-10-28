serialPort = serial('COM3');
serialPort = serial('COM3');
fopen(SerialPort);
format = '%d'; %//the format of the files that we want to read.
size = 1000; %values that we want to read.
F = fscanf(serialPort,format,size);
values = [1:1000]; %array for X axis
plot(values,F);
