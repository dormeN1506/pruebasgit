%Ejercicio 12 - Unidad 4

pkg load control

clear all; close all; clc;

s = tf('s');

G1 = (50*s + 8)/(s^3 + 11*s^2 + 23*s - 8) %Sistema Inestable
zero(G1)
pole(G1)
%pzmap(G1)
%figure()
%step(G1)

G2 = (50*s + 8)/(s^3 + 11*s^2 + 23*s + 8) %Sistema Estable
zero(G2)
pole(G2)
%pzmap(G2)
%figure()
%step(G2)

G3 = (50*s - 8)/(s^3 + 11*s^2 + 23*s + 8) %Sistema Estable
zero(G3)
pole(G3)
%pzmap(G3)
%figure()
%step(G3)

G4 = (50*s + 8)/(s^3 + 23*s + 8) %Sistema Inestable
zero(G4)
pole(G4)
%pzmap(G4)
%figure()
%step(G4)

G5 = (s - 4)/(s^5 + s^4 + 3*s^3 + 9*s^2 + 16*s + 10) %Inestable
zero(G5)
pole(G5)
%pzmap(G5)
%figure()
%step(G5)

G6  = (s + 8)/(s^4 + s^3 + 2*s^2 + 2*s + 3) %Sistema Inestable
zero(G6)
pole(G6)
pzmap(G6)
figure()
step(G6)

G7 = (s^2 + 3*s + 8)/(s^5 + 4*s^4 + 8*s^3 + 8*s^2 + 7*s + 4)
%Sistema Estable
zero(G7)
pole(G7)
%pzmap(G7)
%figure()
%step(G7)

G8 = s/(2*s^5 + s^4 + 2*s^3 + 4*s^2 + s + 6) %Sistema Inestable
zero(G8)
pole(G8)
%pzmap(G8)
%figure()
%step(G8)

G9 = 54/(s^3 + 13*s^2 + 55*s + 75) %Sistema Estable
zero(G9)
pole(G9)
%pzmap(G9)
%figure()
%step(G9)

disp('Terminado')
