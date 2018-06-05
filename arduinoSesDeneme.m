clear all;
ard = arduino('com7', 'uno');     
[y, f] = audioread('ses.mp3');
a=y(:,1);
%clear y;
t = linspace(0,length(a)/f,length(a));
a_min = -1*min(a);
if a_min<0
    a_min = -1*a_min;
end
a=a+a_min;
a_max = max(a);
a=a*(1/a_max);
%sound(a,f);
figure;
plot(t,a)
b=a;
for i=1:length(a)
        if a(i)<=a_max/8
            b(i)=0.1;
            writePWMVoltage(ard, 'D11', 5/8);
        elseif a(i)<=a_max/7
            b(i)=0.2;   
            writePWMVoltage(ard, 'D11', 5/7);
        elseif a(i)<=a_max/6
            b(i)=0.3;
            writePWMVoltage(ard, 'D11', 5/6);
        elseif a(i)<=a_max/5
            b(i)=0.4;
            writePWMVoltage(ard, 'D11', 5/5);
        elseif a(i)<=a_max/4
            b(i)=0.5;
            writePWMVoltage(ard, 'D11',5/4);
        elseif a(i)<=a_max/3
            b(i)=0.6;
            writePWMVoltage(ard, 'D11', 5/3);
        elseif a(i)<=a_max/2
            b(i)=0.7;
            writePWMVoltage(ard, 'D11', 5/2);
        elseif a(i)<=a_max/1
            b(i)=0.8;
            writePWMVoltage(ard, 'D11', 5);
        end
end
%sound(b,f)
figure;
plot(t,b)