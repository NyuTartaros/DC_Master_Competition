function exec()
% main interface, execute the application
    csvTable=[];
    for i=1:4
        filename=strcat('..\data\model',num2str(i),'.csv');
        serial=toDestroySerial(filename);
        csvData=toCsvMat(serial);
        [csvDataRowCount,~]=size(csvData);
        csvTablePoint=size(csvTable,1)+1;
        csvTable(csvTablePoint:csvTablePoint+csvDataRowCount-1,:)=csvData;
    end
    for i=1:4
        filename=strcat('..\data\real',num2str(i),'.csv');
        serial=toDestroySerial(filename);
        csvData=toCsvMat(serial);
        [csvDataRowCount,~]=size(csvData);
        csvTablePoint=size(csvTable,1)+1;
        csvTable(csvTablePoint:csvTablePoint+csvDataRowCount-1,:)=csvData;
    end
    csvwrite('sample.csv',csvTable);
end