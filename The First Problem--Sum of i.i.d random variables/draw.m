figure
x = 1:1:10000;
b=[];
for i=1:10000
    s = 0;
    for j=1:100
        s = s + 4 * rand(1,1) - 2;
    end
    %plot(i,s,'r.');
    %hold on;
    A = [b,s];
    b = A;
end
histogram(b,'Normalization','pdf')
hold on
[mu,sigma]=normfit(b);
ezplot(@(x)normpdf(x,mu,sigma),[mu-3*sigma,mu+3*sigma])