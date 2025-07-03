syms x y real;

alg1 = x^2+y^2-5==0;
alg2 = -3*x+2*y+1==0;
[sx, sy]=solve(alg1, alg2);

dif_eq='3*D2y+5*y=cos(2*x)';

dif_conds = 'y(0)=1, Dy(0)=0';

dif_y=dsolve(dif_eq, dif_conds, 'x');

disp('x: ');
pretty(sx);
disp('y: ');
pretty(sy);

subplot(1,2,1);
hold on;
grid on;
hold on;
plot(sx,sy,'ks');
title('Algebarske');

subplot(1,2,2);
title('Diferencijalne');
ezplot(dif_y,[-5 5]);



