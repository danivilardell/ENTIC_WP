%Instructions to create, fill and close the file resultats.txt

file = fopen('resultats.txt','w');
%To fill the document we use :
fprintf(file,'information');

%To close the file we use :
fclose(file);