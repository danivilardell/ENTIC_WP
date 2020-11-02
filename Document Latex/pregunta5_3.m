serialPort = serial('COM8','BaudRate',9600,'Terminator','CR/LF');
fopen(serialPort);

x=zeros(1,1000); %vector with 1000 empty values
for n=1:1000
    x(n)=fscanf(serialPort,'%d');
end
