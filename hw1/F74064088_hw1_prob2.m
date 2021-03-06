%prob2 a

k = 8.987*(10^9); %庫倫常數
f2_a = figure;
x1 = linspace(-5,5);
hold on;
plot(x1,(k*1)./abs(-1.-x1)+(k*-1)./abs(1.-x1));
xlabel('x');
ylabel('V(x)');
title('Prob2 a');
hold off;

%prob2 b

%以下註解部分用來找最小誤差在哪裡
%{
f2 = figure;
h = linspace(2^-50,2^-1);
min = 100;
r = 3;
q = 1;
%trueNum是正確手算微分公式(先不乘常數k)
trueNum = -q/(r^2);
%發現有比min小的誤差時存起來
loglog(h,abs((q./(r+h)-q/r)/h-trueNum));
for i = 1:50
    if min > abs((q/(r+2^-i)-q/r)/2^-i-trueNum)
        min = abs((q/(r+2^-i)-q/r)/2^-i-trueNum);
        n = i;
    end
end
fprintf('n = %d , min = %.12f\n',n, min);
%}

f2_b = figure;
hh = 2^(-27); %誤差取的h
hold on;
plot(x1,-(((k*1)./(-1.-x1+hh)-(k*1)./(-1.-x1))/hh+((k*-1)./(1.-x1+hh)-(k*-1)./(1.-x1))/hh));
xlabel('x');
ylabel('V(x)');
title('Prob2 b')
hold off;


