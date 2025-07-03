syms x real

funk = (2+log(x))/(sqrt(3*x));

f_dif=diff(funk);
f_dif2=diff(f_dif);

zero_x=solve(funk);
zero_y=subs(funk,{x},zero_x);
nula=zero_y;

extr_x=solve(f_dif);
extr_y=subs(funk,{x},extr_x);

ha = limit(funk,inf);

va = solve(sqrt(3*x));
limit(funk,x,va,'right');

ezplot(funk, [-1 8, -4 3]);
hold on;
grid on;
plot(zero_x, zero_y, 'bs');
plot(extr_x, extr_y, 'ko');
plot([-1 8], [ha ha], 'r');
plot([va va], [-4 3], 'r');
