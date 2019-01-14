%% Факультет комьютерных наук, ХНУ Каразина 2014 КС-32

%% ЛАБ 3. Задача на поиск соответствия.

%% На столе лежат ручка, карандаш, фломастер, красного, синего и зеленого цвета. 
%% Известно, что ручка лежит между предметом красного и зеленого цвета. Карандаш либо зеленый, либо синий.

element(pen).
element(pencil).
element(felt_pen).
color(red).
color(blue).
color(green).

root(X, Y):- element(X), color(Y), X = pen, not(Y = red), not(Y = green).
root(X, Y):- element(X), color(Y), X = pencil, Y = green; Y = blue, not(root(pen, Y)).
root(X, Y):- element(X), color(Y), X = felt_pen, not(root(pen, Y)), not(root(pencil, Y)).
