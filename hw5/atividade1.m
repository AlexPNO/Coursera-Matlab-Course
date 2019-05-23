clc
clear all
close all
% sendo di os numeros do ra 
C=5/2; %(d1+d2)/2; % in
R=9/2; %(d2+d3)/2; % in
q0=1/100; %d4/100 % rad
q0_p=1/100 %d5/100; % rad/s
q_pp=6/100 %d6/100; % rad/s²
t=(0:20);                      %tempo
q=q0+q0_p*t+(q_pp*t.*t)/2;
figure
plot(t,q)

q_p=q0_p+q_pp.*t
figure
plot(t,q_p)

q_pp=0.06*ones(1,21) %tempo

figure
plot(t,q_pp)


A=((R*sin(q))./(C+R*cos(q)));
A=atan(A);
figure 
plot(t,A)

B=R*sin(q)./sin(A);
figure
plot(t,B)

R=(9/2)*ones(1,21); %tempo

Kb=R.*sin(A-q);
Ka=(R/B)*cos(A-q);
Bp=q_p.*(R.*sin(A-q));
Ap=q_p.*((R/B).*cos(A-q));
Bpp=q_pp.*Kb+q_pp.*((Ka.*Ka).*B-R.*cos(A-q));
App=q_pp.*Ka+(q_p.*q_p).*(-(2*Ka.*Kb/B)+(R/B).*sin(A-q));

figure
plot(t,Bp)
hold on
plot(t,Bp/max(abs(Bp)),'r')
xlabel('t')
ylabel('Bp')
a=legend('real','normalizada')
set(a,'Location','NorthWest')

figure
plot(t,Bpp)
hold on
plot(t,Bp/max(abs(Bpp)),'r')
xlabel('t')
ylabel('Bpp')
a=legend('real','normalizada')
set(a,'Location','NorthWest')

figure
plot(t,Ap)
hold on
plot(t,Ap/max(abs(Ap)),'r')
xlabel('t')
ylabel('Ap')
a=legend('real','normalizada')
set(a,'Location','NorthWest')

figure
plot(t,App)
hold on
plot(t,App/max(abs(App)),'r')
xlabel('t')
ylabel('App')
a=legend('real','normalizada')
set(a,'Location','NorthWest')


figure
plot(q,Bp)
hold on
plot(q,Bp/max(abs(Bp)),'r')
xlabel('q')
ylabel('Bp')
a=legend('real','normalizada')
set(a,'Location','NorthWest')

figure
plot(q,Bpp)
hold on
plot(q,Bpp/max(abs(Bpp)),'r')
xlabel('q')
ylabel('Bpp')
a=legend('real','normalizada')
set(a,'Location','NorthWest')

figure
plot(q,Ap)
hold on
plot(q,Ap/max(abs(Ap)),'r')
xlabel('q')
ylabel('Ap')
a=legend('real','normalizada')
set(a,'Location','NorthWest')

figure
plot(q,App)
hold on
plot(q,App/max(abs(App)),'r')
xlabel('q')
ylabel('App')
a=legend('real','normalizada')
set(a,'Location','NorthWest')

