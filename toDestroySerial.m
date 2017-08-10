function serial=toDestroySerial(filename)
% generate the sorted serial of graph
    data=csvread(filename);
    nodeNum=data(size(data,1),1);
    rec=zeros(nodeNum+1,1);
    for i=1:size(data,1)
        rec(data(i,1)+1)=rec(data(i,1)+1)+1;
    end
    [~,serial]=sort(rec,'descend');
    serial=serial-1;
end