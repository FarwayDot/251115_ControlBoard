clear all
close all
clc

%% Initial variables

Vcc = 3.0;
Vpu = 3.0;
Vref = 3.0;

Vh = 2.5;
Vl = 2.2;
Vhyst = Vh-Vl;

R1 = 0;
R2 = 500e3;
R3 = 0;
R4 = 0;

A = (Vref/Vl)-1;
B = Vref - Vh;
C = Vh/R2;
D = Vpu- Vh;

first_pol = (B/A) - (C*R2);
second_pol = (B/A)*(R2+R3) - (C*R2*R3) + (D*R2);
third_pol = (B/A)*R2*R3;

pol = [first_pol second_pol third_pol];
r = roots(pol)



