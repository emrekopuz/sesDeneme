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

yaz=fopen('dosya.txt','w+'); % dosyay� a�t�k
fprintf(yaz,'%6s\n',a); % i�ine verimizi yazd�k
fclose(yaz); % dosya ile i�imiz bitti kapatt�k

oku=fopen('dosya.txt','r'); % Dosyay� okumak i�in a�t�k
yazdir=fscanf(oku,'%s\n',inf);% veri tipimiz string. ve t�m�n� okuduk
fclose(oku); % dosya ile i�imiz bitti kapatt�k
disp(yazdir); % disp ile ekrana yazd�rd�k
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

