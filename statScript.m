data=csvread('..\data\model2.csv');
nodeNum=data(size(data,1),1);
rec=zeros(nodeNum+1,1);
for i=1:size(data,1)
    rec(data(i,1)+1)=rec(data(i,1)+1)+1;
end
stat=zeros(max(rec),1);
for i=1:size(rec,1)
    if rec(i)~=0
        stat(rec(i))=stat(rec(i))+1;
    end
end
plot(stat);