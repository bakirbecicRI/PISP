syms R1 R2 R3 R4 R5 R6 R7 V1 V2 Is real;
R=[R1 3 4;
   R2 1 2;
   R3 2 3;
   R4 2 0;
   R5 3 0;
   R6 3 4;
   R7 0 5];
V=[V1 2 3;
   V2 1 0];
I=[Is 5 4];

kolo.V=V;
kolo.R=R;
kolo.I=I;
kolo.simb=1;

[G, B, C, D, A]=amatrica(kolo);
Z=zmatrica(kolo);
x=A\Z;
disp('Napon na R3 = ');
pretty(x(2)-x(3));
disp('Struja kroz V1 = ');
pretty(x(6));

