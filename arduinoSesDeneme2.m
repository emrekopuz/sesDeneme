ard = arduino('com3', 'uno');     

[y f] = audioread('ses.mp3',[30000 40000]);
a=y(:,1);
clear y;
t = linspace(0,length(a)/f,length(a));
a_min = -1*min(a);
if a_min<0
    a_min = -1*a_min;
end
a=a+a_min;
a_max = max(a);
a=a*(1/a_max);
a_max2 = max(a);
sound(a,f);
figure;
plot(t,a)
b=a;
for i=1:length(a)
        if a(i)==0
            b(i)=0;
           writePWMVoltage(ard, 'D11', 0);
        elseif a(i)<=a_max2*0.125
            b(i)=5*0.125;
           writePWMVoltage(ard, 'D11', b(i));
        elseif a(i)<=a_max2*0.25
            b(i)=5*0.25;   
           writePWMVoltage(ard, 'D11', b(i));
        elseif a(i)<=a_max2*0.375
            b(i)=5*0.375;
          writePWMVoltage(ard, 'D11', b(i));
        elseif a(i)<=a_max2*0.5
            b(i)=5*0.5;
            writePWMVoltage(ard, 'D11', b(i));
        elseif a(i)<=a_max2*0.625
            b(i)=5*0.625;
            writePWMVoltage(ard, 'D11',b(i));
        elseif a(i)<=a_max2*0.75
            b(i)=5*0.75;
            writePWMVoltage(ard, 'D11', b(i));
        elseif a(i)<=a_max2*0.875
            b(i)=5*0.875;
            writePWMVoltage(ard, 'D11', b(i));
        elseif a(i)<=a_max2*1
            b(i)=5;
            writePWMVoltage(ard, 'D11', b(i));
        end
end
%sound(b,f)
figure;
plot(t,b)


clear all