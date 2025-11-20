clear all
close all
clc

%% Initial variables

Vcc = 3.3;
Vref = 3.3;

Vh = 0;
Vl = 0;
Vhyst = Vh-Vl;

R1 = 100e3;
R2 = 30e3;
R3 = 0;
R4 = 100e3;

Vh = Vref/(1+(R1/R2)+(R1/R4))
Vl = (Vref/R1 + Vcc/R4)/((1/R1) + (1/R2) + (1/R4))


% R1_H = (Vh*(R2+R4))/((Vref-Vh)*R2*R4)
% R1_L = (Vref-Vl)/((Vl/R2)+((Vl-Vcc)/R4))
% 
% 
% A = (Vref-Vl)*R2*R2;
% B = Vh*Vl/(Vref-Vh);
% 
% C = Vh*(Vcc-2*Vl)*R2;
% D = Vref-Vh;
% 
% E = Vh*(Vl-Vcc)*R2*R2;
% F = Vref - Vh;
% 
% first_pol = A-B;
% second_pol = C/D;
% third_pol = E/F;
% 
% pol = [first_pol second_pol third_pol];
% r = roots(pol)


% R1 = (Vref - Vh)/((Vh/R2)-((Vpu-Vh)/(R3+R4)))
% R1_1 = (Vref-Vl)/(Vl*((R2+R4)/(R2*R4)))
% 
% A = (Vref/Vl)-1;
% B = Vref - Vh;
% C = Vh/R2;
% D = Vpu- Vh;
% 
% first_pol = (B/A) - (C*R2);
% second_pol = (B/A)*(R2+R3) - (C*R2*R3) + (D*R2);
% third_pol = (B/A)*R2*R3;
% 
% pol = [first_pol second_pol third_pol];
% r = roots(pol)


%% R1

