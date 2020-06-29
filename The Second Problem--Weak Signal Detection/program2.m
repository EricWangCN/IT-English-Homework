figure


xL = [];
yL = [];

for o=1:500
    X = [];
    h = 1e-3;
    size = 1e3;
    %N = 1e11;
    
    N=1e5+o*1e4;
    W = sqrt(N)*randn(1,size);
    T1 = [xL,N];
    xL = T1;
    for i=1:size
        tmp = rand(1,1);
        if tmp > 0.5
            T = [X,1.0];
            X = T;
        end
        if tmp <= 0.5
            T = [X,-1.0];
            X = T;
        end
    end
    Y = N*h*X+W;
    cnt = 0;

    for i = 1:size
        if Y(i) >= 0
            Y(i) = 1;
        end
        if Y(i) < 0
            Y(i) = -1;
        end
        if X(i) == Y(i)
            cnt = cnt+1;
        end
    end
    T2 = [yL,1-cnt/size];
    yL = T2;
end





plot(xL,yL);
grid on
xlabel('N')
ylabel('BER')