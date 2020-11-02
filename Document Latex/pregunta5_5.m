%Instructions to create, fill and close the file resultats.txt

file = fopen('resultats.txt','w');
%To fill the document we use :
fprintf(file,'%3d %6d %9d\n', y);

%To close the file we use :
fclose(file);
