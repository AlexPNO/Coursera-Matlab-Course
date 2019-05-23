clear all

d1=1
d2=4
d3=9
d4=3
d5=9
d6=6

C=(d1+d2)/2;
R=(d2+d3)/10;

q0=d4/100;
qp0=d5/100;
qpp=d6/100;

pt=[0.5*qpp qp0 -4*pi]
t=roots(pt)
t=t(t>=0)
t=0:0.01:t

for i=1:length(t)
q(i)=q0+qp0*t(i)+0.5*qpp*(t(i)^2);
qp(i)=qp0+qpp*t(i);
end

for i=1:length(q)
A(i)=atan(R*sin(q(i))/(C+R*cos(q(i))));
B(i)=R*sin(q(i))/sin(A(i));

KA(i)=(R/B(i))*cos(A(i)-q(i))
KB(i)=R*sin(A(i)-q(i))

Ap(i)=qp(i)*KA(i)
Bp(i)=qp(i)*KB(i)

LA(i)=((-2*KA(i)*KB(i))/B(i))+((R/B(i))*sin(A(i)-q(i)))
LB(i)=B(i)*((KA(i))^2)-(R*cos(A(i)-q(i)))

App(i)=qpp*KA(i)+((qp(i))^2)*LA(i)
Bpp(i)=qpp*KB(i)+((qp(i))^2)*LB(i)
end
figure;plot(t,q)
ylabel('q[rad]')
xlabel('t[s]')
figure;plot(t,qp)
ylabel('velocidade angular de q[rad/s]')
xlabel('t[s]')
figure;plot(t,qpp)
ylabel('aceleração angular de q[rad/s^2]')
xlabel('t[s]')

figure;plot(q,A)
ylabel('A[rad]')
xlabel('q[rad]')
figure;plot(q,A/max(abs(A)))
ylabel('A normalizado')
xlabel('q[rad]')
figure;plot(t,A)
ylabel('A[rad]')
xlabel('t[s]')
figure;plot(t,A/max(abs(A)))
ylabel('A normalizado')
xlabel('t[s]')

figure;plot(q,B)
ylabel('B[rad]')
xlabel('q[rad]')
figure;plot(q,B/max(abs(B)))
ylabel('B normalizado')
xlabel('q[rad]')
figure;plot(t,B)
ylabel('B[rad]')
xlabel('t[s]')
figure;plot(t,B/max(abs(B)))
ylabel('B normalizado')
xlabel('t[s]')

figure;plot(q,Ap)
ylabel('velocidade angular de A[rad/s]')
xlabel('q[rad]')
figure;plot(q,Ap/max(abs(Ap)))
ylabel('velocidade angular de A normalizado')
xlabel('q[rad]')
figure;plot(t,Ap)
ylabel('velocidade angular de A[rad/s]')
xlabel('t[s]')
figure;plot(t,Ap/max(abs(Ap)))
ylabel('velocidade angular de A normalizado')
xlabel('t[s]')

figure;plot(q,Bp)
ylabel('velocidade angular de B[rad/s]')
xlabel('q[rad]')
figure;plot(q,Bp/max(abs(Bp)))
ylabel('velocidade angular de B normalizado')
xlabel('q[rad]')
figure;plot(t,Bp)
ylabel('velocidade angular de B[rad/s]')
xlabel('t[s]')
figure;plot(t,Bp/max(abs(Bp)))
ylabel('velocidade angular de B normalizado')
xlabel('t[s]')

figure;plot(q,App)
ylabel('aceleração angular de A[rad/s^2]')
xlabel('q[rad]')
figure;plot(q,App/max(abs(App)))
ylabel('aceleração angular de A normalizado')
xlabel('q[rad]')
figure;plot(t,App)
ylabel('aceleração angular de A[rad/s^2]')
xlabel('t[s]')
figure;plot(t,App/max(abs(App)))
ylabel('aceleração angular de A normalizado')
xlabel('t[s]')

figure;plot(q,Bpp)
ylabel('aceleração angular de B[rad/s^2]')
xlabel('q[rad]')
figure;plot(q,Bpp/max(abs(Bpp)))
ylabel('aceleração angular de B normalizado')
xlabel('q[rad]')
figure;plot(t,Bpp)
ylabel('aceleração angular de B[rad/s^2]')
xlabel('t[s]')
figure;plot(t,Bpp/max(abs(Bpp)))
ylabel('aceleração angular de B normalizado')
xlabel('t[s]')
