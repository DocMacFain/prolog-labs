%% Факультет комьютерных наук, ХНУ Каразина 2014 КС-32

%% ЛАБ 1.

male(sasha).
male(sergei).
male(vasya).
female(nastya).
female(liza).
female(mary).
married(nastya, sergei).
%% married(X, Y) :- married(Y, X).
father(sasha, sergei).
father(sasha, vasya).
father(sasha, liza).
father(sasha, mary).
parent(X, Y) :- father(X, Y).
sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), X \= Y.
sislaw(X, Y) :- married(Y, Z), sister(X	, Z).
