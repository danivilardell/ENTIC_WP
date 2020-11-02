serialPort = serial('COM8','BaudRate',9600,'Terminator','CR/LF');
fopen(serialPort);
format = '%d'; %//the format of the files that we want to read.

time=zeros(1,1000);
depth=zeros(1,1000);
for n=1:100
    x(n)=fscanf(serialPort,'%d');
    depth(n)=x(n)*
    time(n)=(n-1)*100; %time in ms
end
plot(time,depth);
