clc;
syms x
f1(x) = exp(-x^2);
f2(x) = x^2*exp(-x^2/2);
f3(x) = 0.1*x^2*(1-x)^2*exp(-x^2/4);
hold on
fplot(f1(x)+f2(x)+f3(x), [-10 10])
fplot(f1(x), [-10 10])
fplot(f2(x), [-10 10])
fplot(f3(x), [-10 10])
hold off
title('Example of spatially localized functions')
legend('f(x)', 'f1(x)', 'f2(x)', 'f3(x)')
xlabel('x')
ylabel('f')