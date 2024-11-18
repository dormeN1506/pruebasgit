pkg load control

clear all; close all; clc;

s = tf('s');

G = (s + 2)/(s^4 + 7*s^3 + 19*s^2 + 13*s)
H = 1;

rlocus(G*H)
sgrid(1,3.18) % -3.18
modG=abs(((-3.18)+2)/((-3.18)^4+7*(-3.18)^3+19*(-3.18)^2+13*(-3.18)))
K=1/modG
Gc = minreal(feedback(K*G,H))
figure()
rlocus(Gc)
sgrid(1,3.18)
figure()
step(Gc)
