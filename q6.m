clear all
% For z=0.5
I0=1;
x=linspace(-0.3,0.3,512);
q=atand(x/1);
Ix=zeros(512,1)
for i=1:512
if(and(0.6*tand(q(i))>=-0.1/sqrt(3),0.6*tand(q(i))<=0.1/sqrt(3)) )
    co=I0*cosd(q(i))^3;
    a=0.1/cosd(q(i));
    bnum=sqrt(3)*0.5;
    bdem=((cosd(q(i))^2)/abs(sind(q(i))))-sqrt(3)/cosd(q(i));
    Ix(i)=co*exp(-10*(a-bnum/bdem));
else
    Ix(i)=I0*cosd(q(i))^3;
    x(i)
end
end

plot(x,Ix)
title('Intensity Profile for z=0.5')
xlabel("x")
ylabel("Intesity")
grid on
figure()
%%-----------------------------
% For z=0.8

I0=1;
x=linspace(-0.3,0.3,512);
q=atand(x/1);
Ix=zeros(512,1)
for i=1:512
if(and(0.9*tand(q(i))>=-0.1/sqrt(3),0.9*tand(q(i))<=0.1/sqrt(3)) )
    co=I0*cosd(q(i))^3;
    a=0.1/cosd(q(i));
    bnum=sqrt(3)*0.8;
    bdem=((cosd(q(i))^2)/abs(sind(q(i))))-sqrt(3)/cosd(q(i));
    Ix(i)=co*exp(-10*(a-bnum/bdem));
else
    Ix(i)=I0*cosd(q(i))^3;
    x(i)
end
end

plot(x,Ix)
title('Intensity Profile for z=0.8');
xlabel("x");
ylabel("Intesity")
grid on

        
