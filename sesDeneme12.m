[y f] = audioread('ses.mp3');
t = linspace(0,length(y)/f,length(y));
figure;
%plot(t,y)
for i=1:length(y)
    a(i)=y(i,1);
end
clear y i;
ymin = min(a)
a=a-ymin;
ymax = max(a)
ymin = min(a)
sound(a,f)
t = linspace(0,length(a)/f,length(a));
figure;
plot(t,a)
aralik = (ymax-ymin)/8;

yaz=fopen('dosya.txt','w+'); % dosyayý açtýk
fprintf(yaz,'%6s\n',a); % içine verimizi yazdýk
fclose(yaz); % dosya ile iþimiz bitti kapattýk

oku=fopen('dosya.txt','r'); % Dosyayý okumak için açtýk
yazdir=fscanf(oku,'%s\n',inf);% veri tipimiz string. ve tümünü okuduk
fclose(oku); % dosya ile iþimiz bitti kapattýk
disp(yazdir); % disp ile ekrana yazdýrdýk
% for i=1:length(a)
%    if a(i)< aralik
%      tit(1)=tit(1)+1;
%    end
%    if a(i)< aralik*2
%     
%    end
%    if a(i)< aralik*3
%        
%    end
%    if a(i)< aralik*4
%        
%    end
%    if a(i)< aralik*5
%        
%    end
%    if a(i)< aralik*6
%        
%    end
%    if a(i)< aralik*7
%        
%    end
%    if a(i)< aralik*7
%        
%    end
% end

