serialPort = serial('COM3','BaudRate',9600,'Terminator','CR/LF');
samples = 1000;
x = zeros(1,1000);
depth = zeros(1,1000);
time = zeros(1,1000);
max_depth = 0;
min_depth = 0;

for n = 1:samples
    fopen(serialPort)
    fprintf(serialPort,'%s\n','S')
    a=fscanf(serialPort,'%d');
    x(n)=a;
    depth(n)=x(n)*
    if(depth(n)<max_depth)
        max_depth=depth(n);
    end
    if(depth(n)>min_depth)
        min_depth=depth(n);
    end
    time(n)=(n-1)*100;
    timet=t';
    deptht=d';
    plot(timet, deptht);
    title('Depth vs Time');
    xlabel('Time [ms]');
    ylabel('Depth [m]');
    grid
    drawnow;
end

fclose(serialPort);
