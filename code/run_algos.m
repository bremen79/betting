fprintf('mean x:%f\n', mean(x));
b=-0.5:0.001:0.5;
for i=1:numel(b)
  ris(i)=sum(log(1+b(i)*x));
end
[mx,idx]=max(ris);
b_opt=b(idx);

wealth=1;
wealth_kt=1;
wealth_opt=1;

wealth_array=zeros(1,n);
wealth_kt_array=zeros(1,n);
wealth_opt_array=zeros(1,n);
G=1;
theta=0;
for i=1:n
  b=2*sigmoid(4*theta/(2*(G+1)))-1;
  wealth=wealth*(1+b*x(i));
  theta=theta+x(i);
  G=G+abs(x(i));
  wealth_array(i)=wealth;
  
  b=theta/(i+1);
  wealth_kt=wealth_kt*(1+b*x(i));
  wealth_kt_array(i)=wealth_kt;
  
  wealth_opt=wealth_opt*(1+b_opt*x(i));
  wealth_opt_array(i)=wealth_opt;
end