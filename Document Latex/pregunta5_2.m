%For start reading from the serial port we must type:

fprintf(serialPort,'%s\n','S'); %is used to send a value (S in this case) from Matlab to Arduino
fread(serialPort); %read binary data from device
scaned = fscanf(s,'%d'); %read ASCI data from device, and format as text;
%To stop reading:
stopasync;
