close all; clear all; clc;

%wejscia do sieci oraz minimalne oraz maksymalne wartosci wejsc 
%(64 par 0&1 - osobno dla kazdej z danych uczacych)

start=[0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 
    0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;
    0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 
    0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;
    0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 
    0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;
    0 1; 0 1; 0 1; 0 1];    

%ilosc wyjsc z sieci (jedna warstwa - 64 neutronow na wyjsciu)     
wyjscia_s = 64;

%uzycie funkcji newff
net = newff(start, wyjscia_s, {'tansig'}, 'trainlm', 'learnh');


 %kolumnowa reprezentacja binarna 4 emotikonow dla tablicy 8x4
          %A B C D 
WEJSCIE = [0 0 0 0 ;   %tu sa wiersze nr 8
           1 1 1 1 ;
           0 0 0 0 ;
           0 0 0 0 ;
           0 0 0 0 ;
           0 1 0 1 ;
           1 1 1 1 ;
           0 0 0 1 ;
           
          %A B C D     % tu sš wiersze nr 7
           1 1 1 1 ;
           1 0 0 0 ;
           1 1 0 0 ;
           0 0 0 0 ;
           0 0 0 0 ;
           1 1 0 0 ;
           1 0 0 0 ;
           1 1 1 0 ;
           
          %A B C D     % tu sš wiersze nr 6
           1 0 0 0 ;
           0 0 1 1 ;
           1 0 1 1 ;
           0 0 0 0 ;
           0 0 0 0 ;
           1 0 1 1 ;
           0 0 1 1 ;
           1 0 0 0 ;
           
          %A B C D     % tu sš wiersze nr 5
           0 0 0 0 ;
           0 0 0 1 ;
           0 0 0 1 ;
           0 0 0 0 ;
           0 0 0 0 ;
           0 0 0 0 ;
           0 0 0 0 ;
           0 0 0 0 ;
           
          %A B C D     % tu sš wiersze nr 4
           1 1 0 0 ;
           0 1 0 0 ;
           0 0 0 0 ;
           0 0 1 0 ;
           0 0 1 0 ;
           0 0 0 1 ;
           0 1 0 1 ;
           1 1 0 0 ;
           
          %A B C D     % tu sš wiersze nr 3
           0 1 1 0 ;
           1 1 0 0 ;
           1 0 0 1 ;
           1 0 0 1 ;
           1 0 0 0 ;
           1 0 0 1 ;
           1 1 0 1 ;
           0 1 1 1 ;
           
          %A B C D     % tu sš wiersze nr 2
           0 0 0 0 ;
           0 0 1 0 ;
           1 1 0 0 ;
           1 0 0 0 ;
           1 0 0 1 ;
           1 1 0 1 ;
           0 0 1 1 ;
           0 0 0 1 ;
           
          %A B C D     % tu sš wiersze nr 1
           0 0 0 0 ;
           0 0 0 0 ;
           0 0 1 1 ;
           0 1 1 1 ;
           0 1 1 0 ;
           0 0 1 0 ;
           0 0 0 0 ;
           0 0 0 0 ];
           
%zmienna, ktora reprezentuje, czy uzytkownik "trafil" 
%- 1 oznacza trafienie, 0 - chybienie
WYJSCIE = [1 0 0 0 ;  %A
           0 1 0 0 ;  %B
           0 0 1 0 ;  %C
           0 0 0 1 ]; %D
           
        
%PARAMETRY ALGORYTMU HEBBA
% * wspolczynnik zapominania
lp.dr = 0.5;
% * wspolczynnik uczenia
lp.lr = 0.5;

%dostosowanie parametrów sieci do metody Hebba
wagiHebba = learnh([], WEJSCIE, [], [], WYJSCIE, [], [], [], [], [], lp, []);


%PARAMETRY TRENINGU SIECI:
% * maksymalna ilosc epok
net.trainParam.epochs = 1000;
% * cel wydajnosci sieci
net.trainParam.goal = 0.001;
% * wskaznik uczenia sieci
net.trainParam.lr=0.5;
whebb=wagiHebba';
net = train(net, WEJSCIE, whebb);

%dane testowe 
a_testowe= [0; 1; 0; 0; 0; 0; 1; 0;  %8
           1; 1; 1; 0; 0; 1; 1; 1;  %7
           1; 0; 1; 0; 0; 1; 0; 1;  %6
           0; 0; 0; 0; 0; 0; 0; 0;  %5
           1; 0; 0; 0; 0; 0; 0; 1;  %4
           0; 1; 1; 1; 1; 1; 1; 0;  %3
           0; 0; 1; 1; 1; 1; 0; 0;  %2
           0; 0; 0; 0; 0; 0; 0; 0]; %1
          
          
b_testowe=[0; 1; 0; 0; 0; 0; 1; 0;  %8
           1; 0; 1; 0; 0; 1; 0; 1;  %7
           0; 0; 0; 0; 0; 0; 0; 0;  %6
           0; 0; 0; 0; 0; 0; 0; 0;  %5
           1; 1; 0; 0; 0; 0; 1; 1;  %4
           1; 1; 0; 0; 0; 0; 1; 1;  %3
           0; 0; 1; 0; 0; 1; 0; 0;  %2
           0; 0; 0; 1; 1; 0; 0; 0]; %1
          

          
c_testowe=[0; 1; 0; 0; 0; 0; 1; 0;  %8
           1; 0; 0; 0; 0; 0; 0; 1;  %7
           0; 1; 1; 0; 0; 1; 1; 0;  %6
           0; 0; 0; 0; 0; 0; 0; 0;  %5
           0; 0; 0; 1; 1; 0; 0; 0;  %4
           1; 0; 0; 0; 0; 0; 0; 1;  %3
           0; 1; 0; 0; 0; 0; 1; 0;  %2
           0; 0; 1; 1; 1; 1; 0; 0]; %1
          
          
d_testowe=[0; 1; 0; 0; 0; 1; 1; 1;  %8
           1; 0; 0; 0; 0; 0; 0; 0;  %7
           0; 1; 1; 0; 0; 1; 1; 0;  %6
           0; 1; 1; 0; 0; 0; 0; 0;  %5
           0; 0; 0; 0; 0; 1; 1; 0;  %4
           0; 0; 1; 1; 0; 1; 1; 1;  %3
           0; 0; 0; 0; 1; 1; 1; 1;  %2
           0; 0; 1; 1; 0; 0; 0; 0]; %1
                  
efekt = wagiHebba;
%symulacja sieci net
efekt_1 = sim(net, a_testowe);

%wypisywanie wartosci reguly Hebba, wypisywanie kolejnych wierszy
disp('Jednokrotne wykorzystanie reguly Hebba: ')
disp('A = '), disp(sum(efekt(1, ':')));
disp('B = '), disp(sum(efekt(2, ':')));
disp('C = '), disp(sum(efekt(3, ':')));  
disp('D = '), disp(sum(efekt(4, ':')));


%wypisywanie wartosci 
disp('Dzialanie algorytmu z wykorzystaniem r. Hebba dla wszystkich emotek: ')
disp('A = '), disp(efekt_1(1)); 
disp('B = '), disp(efekt_1(2));
disp('C = '), disp(efekt_1(3)); 
disp('D = '), disp(efekt_1(4));
