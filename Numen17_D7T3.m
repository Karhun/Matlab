%Tehtava 3 Demo 7
k = 6.22*10^-19;
n_1 = 2 * 10^3;
n_2 = n_1;
n_3 = 3* 10^3;
x_0 = 0;
%x = linspace(0, 0.3, 1000);

aikajanne = [0:0.01:0.25];
%dxdt = odefunc(x,k,n_1, n_2, n_3)
valinnat = odeset('RelTol', 1e-2, 'AbsTol', 1e-4);
[t, y] = ode45(@(x, t) odefunc(t, x,k,n_1, n_2, n_3), aikajanne, x_0, valinnat)
plot(t,y)
title('Kaliumhydroksidin m‰‰r‰ ajan funktiona')
xlabel('t')
ylabel('y')