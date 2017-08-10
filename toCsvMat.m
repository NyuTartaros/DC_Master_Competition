function csvData=toCsvMat(serial)
    serialLength=size(serial,1);
    columnLimit=500;
    rowLimit=ceil(serialLength/columnLimit);
    csvData=zeros(rowLimit,columnLimit)*NaN;
    for i=1:serialLength
        columnCount=mod(i-1,columnLimit)+1;
        rowCount=ceil(i/columnLimit);
        csvData(rowCount,columnCount)=serial(i);
    end
end