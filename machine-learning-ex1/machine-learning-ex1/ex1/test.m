
data=load('ex1data1.txt');
x=data(:,1);
y=data(:,2);
plot(x,y,'rx')
m=size(x)(1);
x=[ones(m,1),x];
theta=[0;0];
j=computeCost(x,y,theta);
disp(j);
alpha=0.01;
iter=1600;
%theta
thi=zeros(iter,1);
for i=1:iter,
	h=x*theta;
	theta=theta-(alpha/m)*sum((h-y).*x)';
	%disp(theta);
	thi(i)=computeCost(x,y,theta);
end


hold on; % keep previous plot visible
plot(x(:,2), x*theta, '-')
legend('Training data', 'Linear regression')