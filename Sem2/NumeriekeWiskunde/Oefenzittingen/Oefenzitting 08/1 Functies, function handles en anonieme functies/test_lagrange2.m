%% interpolerende veelterm van graad n-1 van Runge functie 

n = 10;
x = linspace(-1,1,n); %interpolatiepunten
fx = @f1;

z = linspace(-1,1,1000); %evaluatiepunten
y = evalueer_lagrange2(x,fx,z);

fz = 1./(1+25*z.^2);

figure(1),clf
plot(z,fz)
hold on
plot(z,y,'r')
legend('functie','int. veelterm')