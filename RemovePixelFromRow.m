function [ NewRow ] = RemovePixelFromRow( Row, col )

n = size(Row, 2);

NewRow=ones(1,n-1,3,'uint8');


NewRow = Row(1,[1:col-1, col+1:end],1:3);




end

