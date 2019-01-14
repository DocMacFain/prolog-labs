%% Факультет комьютерных наук, ХНУ Каразина 2014 КС-32

%% ЛАБ 2. Обработка списков

%% Преобразовать список целых чисел A1, A2, ..., An следующим образом: 
%% исключить нули, слева записать все положительные числа, справа - все отрицательные.

%% add([],E,[E]).
%% add([L1|H1],E,[L1|H2]):- add(H1,E,H2).


quest(IN) :- qSort(IN, X), removeZero(X, OUT), write(OUT).

removeZero([],[]):- !.
removeZero([0|T],Result):- !, removeZero(T,Result).
removeZero([H|T],[H|Result]):- removeZero(T,Result).

qSort([], []).
qSort([T|R], List):- 
	split(T, R, Less, Great), 
	qSort(Less, LessSort), 
	qSort(Great, GreatSort), 
	append(LessSort, [T|GreatSort], List).

%% Разделяем массив на два массива больше и меньше
split(_, [], [], []).
split(T, [M|R], [M|Less], Great):- M >= T, split(T, R, Less, Great).
split(T, [M|R], Less, [M|Great]):- M < T, split(T, R, Less, Great).

%% Склеиваем два списка
append([], M, M).
append([L|Left], Right, [L|Result]):- append(Left, Right, Result).
