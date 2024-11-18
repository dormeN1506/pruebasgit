%Ejercicio 1 - Unidad 4

pkg load control

clear all; close all; clc;

s = tf('s');

%Todos los Kp, Kv y Ka que calcule es con el TVF: valor independiente de
%s del numerador sobre valor independiente de s del denominador (después
%de sacar factor común s)

%El tipo de sistema y el error se sacan con la función de transferencia
%de lazo abierto (importante)

%G1

G1 = 50/((1 + 0.5*s)*(1 + 2*s)) %Sistema Tipo 0, orden 2
%Error cte para escalón, infinito para rampa y parábola
Kp1 = 50
ess1 = 1/(1 + Kp1)

%G2

G2 = 2/(s*(1 + 0.1*s)*(1 + 0.5*s)) %Sistema Tipo 1, orden 3
%Error cte para rampa, 0 para escalón e infinito para parábola
Kv1 = 2
ess2 = 1/Kv1

%G3

G3 = 1/(s*(s^2 + 4*s + 200)) %Sistema Tipo 1, orden 3
%Error cte para rampa, 0 para escalón e infinito para parábola
Kv2 = 1/200
ess3 = 1/Kv2

%G4

G4 = (30*(1 + 2*s)*(1 + 4*s))/(s*(s^2 + 2*s + 10)) %Sistema Tipo 1, orden 3
%Error cte para rampa, 0 para escalón e infinito para parábola
Kv3 = 30/10
ess4 = 1/Kv3

%G5

G5 = (10*(s + 1))/(s*(s + 4)*(4*s^2 + 6*s + 1)) %Sistema Tipo 1, orden 4
%Error cte para rampa, 0 para escalón e infinito para parábola
Kv4 = 10/4
ess5 = 1/Kv4

%G6 (va una K en lugar de 1 en el numerador, pero la librería symbolic
%rompe los huevos para simplificar -> el error en realidad es 1/(1 + K)

G6 = 1/((1 + s)*(1 + 10*s)*(1 + 20*s)) %Sistema tipo 0, orden 3
%Error cte para escalón e infinito para rampa y parábola
Kp2 = 1
ess6 = 1/(1 + Kp2)

disp('Terminado')
