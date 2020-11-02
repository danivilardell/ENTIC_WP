%opens for reading
file = fopen('resultats.txt','r'); 
formatSpec = '%d %d'; %format of the data stored in the file
sizeA = [2 Inf]; %Data structure where data read will be stored
A = fscanf(file,formatSpec,sizeA) %read from file
fclose(file); %closing the file
plot();
