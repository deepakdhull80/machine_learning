function s= standard(X,mean)
		tmp=X
		m=size(X)(1)
		tmp=tmp-mean;
		tmp=tmp.^2;
		s=sum(tmp)./m;
		s=s.^(0.5);
		X=X./tmp;
end 