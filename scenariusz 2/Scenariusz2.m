close all; clear all; clc;

% Litery są utworzone na matrycy 5 x 7 czyli na 35 polach. I tyle wejść ma
% sieć, mogą zostać wypełnione tylko liczbą 0 albo 1;
min_max=[0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 
         0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;
         0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 
         0 1; 0 1; 0 1;0 1;0 1];
ilosc_wyjsc=1;
%net=newlin(min_max,ilosc_wyjsc);
net = newp(min_max,ilosc_wyjsc);

%Matryce te należy skonwertować do postaci akceptowalnej przez sieć, czyli
%0/1
LiteraA=   [0 0 1 0 0 0 1 0 1 0 0 1 0 1 0 ...
            1 0 0 0 1 
            1 1 1 1 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ]';
        
Literaa=   [0 0 0 0 0 ...
            0 0 0 0 0 ...
            1 1 1 0 0 ...
            0 0 0 1 0 ...
            1 1 1 1 0 ...
            1 0 0 1 0 ...
            1 1 1 1 1 ]';  
        
LiteraD  = [1 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 0 ]';
        
Literad=   [0 0 0 0 0 ...
            0 0 0 1 0 ...
            0 0 0 1 0 ...
            0 0 0 1 0 ...
            1 1 1 1 0 ...
            1 0 0 1 0 ...
            1 1 1 1 0 ]';

LiteraE  = [1 1 1 1 1 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 1 ]';
        
Literae=   [0 0 0 0 0 ...
            0 0 0 0 0 ...
            0 1 1 0 0 ...
            1 0 0 1 0 ...
            1 1 1 1 0 ...
            1 0 0 0 0 ...
            0 1 1 1 0 ]';


LiteraF =  [1 1 1 1 1 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ]';
        
Literaf=   [0 0 1 1 0 ...
            0 1 0 0 0 ...
            1 1 1 0 0 ...
            0 1 0 0 0 ...
            0 1 0 0 0 ...
            0 1 0 0 0 ...
            0 1 0 0 0 ]';
        
LiteraN=   [1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 0 0 1 ...
            1 0 1 0 1 ...
            1 0 0 1 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1]';
        
Literan=   [0 0 0 0 0 ...
            0 0 0 0 0 ...
            1 1 1 1 0 ...
            1 0 0 1 0 ...
            1 0 0 1 0 ...
            1 0 0 1 0 ...
            1 0 0 1 1]';
        
LiteraP=   [1 1 1 1 0 ... 
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0]';
        
Literap=  [ 0 0 0 0 0 ... 
            0 0 0 0 0 ...
            1 1 1 1 0 ...
            1 0 0 1 0 ...
            1 1 1 1 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0]';
        
LiteraR=   [1 1 1 1 0 ... 
            1 0 0 0 1  ...
            1 0 0 0 1 ...
            1 1 1 1 0 ...
            1 0 1 0 0 ...
            1 0 0 1 0 ...
            1 0 0 0 1]'; 
        
Literar=   [0 0 0 0 0 ...
            0 0 0 0 0 ...
            0 1 1 1 1 ...
            0 0 1 0 1 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0]';
        
LiteraT=   [1 1 1 1 1 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0]';
        
Literat=   [0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 1 1 1 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 1 ...
            0 0 1 1 0]';
        
LiteraU=  [1 0 0 0 1 ...
           1 0 0 0 1 ...
           1 0 0 0 1 ...
           1 0 0 0 1 ...
           1 0 0 0 1 ...
           1 0 0 0 1 ...
           0 1 1 1 0]';
       
Literau=  [0 0 0 0 0 ...
           0 0 0 0 0 ...
           0 0 0 0 0 ...
           1 0 0 1 0 ...
           1 0 0 1 1 ...
           1 0 0 1 0 ...
           0 1 1 0 1]';
       
LiteraY=  [1 0 0 0 1 ...
           1 0 0 0 1 ...
           0 1 0 1 0 ...
           0 0 1 0 0 ...
           0 0 1 0 0 ...
           0 0 1 0 0 ...
           0 0 1 0 0]';
       
Literay=  [0 0 0 0 0 ...
           1 0 0 0 1 ...
           1 0 0 1 1 ...
           0 1 1 1 1 ...
           1 0 0 1 0 ...
           0 1 0 1 0 ...
           0 0 1 0 0]';
       
 
%Liniowym rozwinięciem tych matryc będą wektory wejściowe ciągu uczącego, który składa się z 20 wektorów uczących
       
in=[0 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 
    1 0 1 0 1 0 1 0 0 0 1 0 1 0 1 0 0 0 0 0
    1 0 1 0 1 0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 
    1 0 1 0 1 0 1 1 0 0 1 0 1 0 1 0 0 0 0 0
    0 0 0 0 1 0 1 0 1 0 0 0 0 0 1 0 1 0 1 0
    1 0 1 0 1 0 1 0 1 0 1 0 1 0 0 0 1 0 1 1
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    1 0 1 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 1 1
    1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 0 0 1
    0 1 0 0 0 1 0 1 1 1 0 1 0 1 0 1 0 0 1 0
    0 1 0 0 0 1 0 1 0 1 0 1 0 1 1 1 0 0 0 0
    0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 1 0 0 1 1
    1 0 1 0 0 0 0 0 1 0 1 0 1 1 0 0 1 0 0 1
    1 0 1 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 0
    1 0 0 0 1 0 1 1 0 0 1 0 1 0 0 0 0 0 0 1
    1 0 0 0 1 0 1 0 1 0 1 0 1 1 1 1 0 0 1 1
    1 1 0 1 1 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1
    1 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0 1 0 0 1
    1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 1
    0 1 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0
    0 1 0 1 0 1 0 0 0 0 0 1 1 1 1 1 0 0 1 0
    0 1 0 1 0 1 0 0 1 1 0 1 0 0 0 0 0 1 0 1
    1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0 0
    1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 0 0
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1
    0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 0
    0 1 0 1 0 0 0 0 0 1 0 0 1 0 0 0 0 1 0 1
    1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1 1 0 0 0
    1 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 0 0 0 0
    0 1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 1 1 0 0
    0 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1
    0 1 1 1 1 1 0 0 0 1 0 0 0 0 0 1 1 0 0 0
    1 1 0 0 1 0 0 0 1 1 0 0 1 0 0 0 0 1 0 0];
   %A a D d E e F f N n P p R r T t U u Y y
           
out=[ 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ];



testujacyA=[0;1;1;1;0;1;0;0;0;1;1;0;0;0;1;1;1;1;1;1;1;0;0;0;1;1;0;0;0;1;1;0;0;0;1;];
           %1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y    
testujacya=[0;0;0;0;0;0;0;0;0;0;1;1;1;0;0;0;0;0;1;0;1;1;1;1;0;1;0;0;1;0;1;1;1;1;1;];
           %0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y 
testujacyD=[1;1;1;1;0;1;0;0;0;1;1;0;0;0;1;1;0;0;0;1;1;0;0;0;1;1;0;0;0;1;1;1;1;1;0;];
           %0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y 
testujacyd=[0;0;0;0;0;0;0;0;1;0;0;0;0;1;0;0;0;0;1;0;1;1;1;1;0;1;0;0;1;0;1;1;1;1;0;];
           %0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y 
testujacyE=[1;1;1;1;1;1;0;0;0;0;1;0;0;0;0;1;1;1;1;0;1;0;0;0;0;1;0;0;0;0;1;1;1;1;1;];
           %0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y   
testujacye=[0;0;0;0;0;0;0;0;0;0;0;1;1;0;0;1;0;0;1;0;1;1;1;1;0;1;0;0;0;0;0;1;1;1;0;];
           %0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y
testujacyF=[1;1;1;1;1;1;0;0;0;0;1;0;0;0;0;1;1;1;1;0;1;0;0;0;0;1;0;0;0;0;1;0;0;0;0;];
           %0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y  
testujacyf=[0;0;1;1;0;0;1;0;0;0;1;1;1;0;0;0;1;0;0;0;0;1;0;0;0;0;1;0;0;0;0;1;0;0;0;];
           %0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y 
testujacyN=[1;0;0;0;1;1;0;0;0;1;1;1;0;0;1;1;0;1;0;1;1;0;0;1;1;1;0;0;0;1;1;0;0;0;1;];
           %0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y
testujacyn=[0;0;0;0;0;0;0;0;0;0;1;1;1;1;0;1;0;0;1;0;1;0;0;1;0;1;0;0;1;0;1;0;0;1;1;];
           %0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y
testujacyP=[1;1;1;1;0;1;0;0;0;1;1;0;0;0;1;1;1;1;1;0;1;0;0;0;0;1;0;0;0;0;1;0;0;0;0;];
           %0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y 
testujacyp=[0;0;0;0;0;0;0;0;0;0;1;1;1;1;0;1;0;0;1;0;1;1;1;1;0;1;0;0;0;0;1;0;0;0;0;];
           %0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y  
testujacyR=[1;1;1;1;0;1;0;0;0;1;1;0;0;0;1;1;1;1;1;0;1;0;1;0;0;1;0;0;1;0;1;0;0;0;1;];
           %0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y  
testujacyr=[0;0;0;0;0;0;0;0;0;0;0;1;1;1;1;0;0;1;0;1;0;0;1;0;0;0;0;1;0;0;0;0;1;0;0;];
           %0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y 
testujacyT=[1;1;1;1;1;0;0;1;0;0;0;0;1;0;0;0;0;1;0;0;0;0;1;0;0;0;0;1;0;0;0;0;1;0;0;];
           %0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y
testujacyt=[0;0;1;0;0;0;0;1;0;0;0;1;1;1;0;0;0;1;0;0;0;0;1;0;0;0;0;1;0;1;0;0;1;1;0;];
           %0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y
testujacyU=[1;0;0;0;1;1;0;0;0;1;1;0;0;0;1;1;0;0;0;1;1;0;0;0;1;1;0;0;0;1;0;1;1;1;0;];
           %0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
           %A a D d E e F f N n P p R r T t U u Y y
testujacyu=[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;1;0;0;1;0;1;0;0;1;1;1;0;0;1;0;0;1;1;0;1;];
           %0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
           %A a D d E e F f N n P p R r T t U u Y y;
testujacyY=[1;0;0;0;1;1;0;0;0;1;0;1;0;1;0;0;0;1;0;0;0;0;1;0;0;0;0;1;0;0;0;0;1;0;0;];
           %0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
           %A a D d E e F f N n P p R r T t U u Y y
testujacyy=[0;0;0;0;0;1;0;0;0;1;1;0;0;1;1;0;1;1;1;1;1;0;0;1;0;0;1;0;1;0;0;0;1;0;0;];
           %0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
           %A a D d E e F f N n P p R r T t U u Y y
           
net.trainParam.epochs = 2500;
net.trainParam.goal = 0.01; 
net.trainParam.mu = 0.01; 
net= train(net,in,out); 
           
%Wywołujemy przykładową literę z alfabetu, może to być R:
literka=testujacyp;
%Wyświetlamy ją:
plotchar(literka); 

a=sim(net,literka);
if round(a) == 0    
    disp('To jest mała litera');
else
     disp('To jest duża litera');
    
end
disp(a)