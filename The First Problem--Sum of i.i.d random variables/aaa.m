N=100;
nTimes=10^4;
for t=1:1:nTimes
    x=4*rand(N,1)-2;
    s=sum(x);
    nSum(t)=s;
end
ksdensity(nSum);
hold on;
[mu,sigma]=normfit(b);
ezplot(@(x)normpdf(x,mu,sigma),[mu-3*sigma,mu+3*sigma]);