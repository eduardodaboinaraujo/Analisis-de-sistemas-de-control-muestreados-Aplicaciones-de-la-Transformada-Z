clear 
clc 
close all

% -----------           RESPUESTA A LA PREGUNTA 5        -----------------------%
%---- Funcion de transfencia ----%
% G(s)=        5
%        -------------
%         5*s^2+R*s+1
%   
% R=4 tomo ese valor para el sistema tenga un comportamiento
% sobreamortiguado

num = 5;
den = [5 4 1];
G= tf(num,den);

% ---- Tiempo de muestreo ----%
To=0.62;

%---- Sistema discretizado ----%
num = [0.07057 0.1411 0.07057];
den = [1 -1.564 0.6207];
Gz= tf(num,den,To);

figure(1)
step(G)
hold on 
step(Gz)
title('Sistema RLC');
legend('Continua','Discreto');
grid on
%------------------------------------------------------------------------------------------------------%
% - Grafica del sistema en tiempo continúo ante una entrada escalón "PARTE DE GRAFICA DE LA PREGUNTA 1" -%
figure(2)
step(G)
grid on
%------------------------------------------------------------------------------------------------------%
% - Grafica de polos en continuo y discreto "PARTE DE GRAFICA DE LA PREGUNTA 3" -%
figure(3)
rlocus(G)
grid on
figure(4)
rlocus(Gz)
grid on
%------------------------------------------------------------------------------------------------------%
% -------------------           RESPUESTA A LA PREGUNTA 5 DE TAREA 6       ----------------------------%
% Se toma un R=2 para obtener comportamiento subamortiguado y se redise el tiempo de muestreo %

%---- funcion de transfencia ----%
% Y(s)=        5
%        -------------
%         5*s^2+R*s+1
%   
% R=2 tomo ese valor para el sistema tenga un comportamiento
% subamortiguado
num = 5;
den = [5 2 1];
G2= tf(num,den);

% ---- Tiempo de muestreo menor al elegido en el primer apartado ----%
T2o=0.42;

%---- Sistema discretizado ----%
numz2=[0.04035 0.08071 0.04035];
demz2=[1 -1.814 0.8463];
Gz2=tf(numz2,demz2,T2o);

figure(5)
step(G2)
hold on 
step(Gz2)
title('Sistema RLC');
legend('Continua','Discreto');
grid on
%------------------------------------------------------------------------------------------------------%
% -----------           RESPUESTA A LA PREGUNTA 9      -----------------------%
% ---- Tiempo de muestreo acorde al sistema ----%
T3o=0.44;

%---- Sistema discretizado ----%
numz3=[0.04221 0.08441 0.04221];
demz3=[1 -1.809 0.843];
Gz3=tf(numz3,demz3,T3o);

figure(6)
step(G2)
hold on 
step(Gz3)
title('Sistema RLC');
legend('Continua','Discreto');
grid on
%------------------------------------------------------------------------------------------------------%
% - Grafica de polos en continuo y discreto "PARTE DE GRAFICA DE LA PREGUNTA 7" -%
figure(7)
rlocus(G)
grid on
figure(8)
rlocus(Gz)
grid on
%------------------------------------------------------------------------------------------------------%


