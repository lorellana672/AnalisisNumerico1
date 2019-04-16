function horner(cof,x)
	s= cof[end]
	for k in length(cof)-1 ;-1;1
		s= cof[k] + x * s
	end
	return s
end