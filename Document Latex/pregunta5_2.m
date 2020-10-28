%For start reading from the serial port we must type:

fread(serialPort); %//read binary data from device
fscanf(serialPort);%//read ASCI data from device, and format as text;
%To stop reading:
stopasync;
