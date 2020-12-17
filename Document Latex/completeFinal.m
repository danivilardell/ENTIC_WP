fclose(instrfindall);
serialPort = serial('/dev/cu.usbserial-FT476NI9','BaudRate',9600,'Terminator','CR/LF');
samples = 150;
x = zeros(1,samples);
depth = zeros(1,samples);
time = zeros(1,samples);
max_depth = 0;
min_depth = 0;
t=1:samples;

fopen(serialPort);
for n = 1:samples
    fprintf(serialPort,'%s\n','S');
    a=fscanf(serialPort,'%d');
    disp(a);
    if(n > 1 && abs(x(n - 1) - a) > 300) 
        a = x(n - 1);
    end 
    x(n)=a;
    depth(n)=x(n);
    if(depth(n)>max_depth)
        max_depth=depth(n);
    end
    if(depth(n)<min_depth)
        min_depth=depth(n);
    end
    time(n)=(n-1)*100;
    timet=t';
    deptht=depth';
    plot(timet, deptht);
    title('Depth vs Time');
    xlabel('Time [ms]');
    ylabel('Depth [m]');
    grid
    drawnow;
end

fclose(serialPort);
