close all; clear all; clc;
%Poprawne dane wejsciowe i wyjsciowe
data_in = [0.4 0.8 1.2 1.6 -2 -1.6 -1.2 -0.8 -0.4 0];
data_out = [1949.5 1982.5 2147.7 2179.1 1663.3 1688.0 1686.7 1776.4 1780.0 0.0];
%tworzenie sieci i jej ustawianie
N = feedforwardnet(5);
%uzycie algorytmu wstecznej propagacji
N.trainFcn = 'traingd';
%wspolczynnik uczenia:
N.trainParam.lr = 0.3;
%bezwladnosc
N.trainParam.mc = 0.5
%trenowanie;
N = train(N,data_in, data_out);
%miejsce na wyniki
result = zeros(size(N));

%Testowanie sieci
while n < 10
	n=n+1;
	result(n) = sim(N, data_in(i));
end
	
	