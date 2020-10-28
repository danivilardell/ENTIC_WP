%To open serial port we will use 

serialPort = serial('COM3');
fopen(serialPort);

%To close the serial port we will use :
fclose(serialPort);