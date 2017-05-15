function y = padfill(x, offset)
	y = zeros(size(x)+2*offset);
	y((offset+1) : (end-offset) , (offset+1) : (end-offset)) = x; 
end