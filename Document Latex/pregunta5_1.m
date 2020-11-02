%To open serial port we will use 

serialPort = serial('COM8','BaudRate',9600,'Terminator','CR/LF');
fopen(serialPort);

%To close the serial port we will use :
fclose(serialPort);
delete(serialPort);
clear serialPort;
