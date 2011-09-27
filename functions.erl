-module(functions).
-compile(export_all).

%% "head/1" acting exactly like erlang:hd/1 which takes list as arguement and return its first element
%% It will be done with the help of the '||' con operator 

head([H|_]) -> H.
second([_,H|_]) -> H.
last([_|L]) -> L.

valid_time ( {Date = {Y,M,D} , Time = {H,Min,S}} ) ->
    io:format("The date tuple  (~p) says today is : ~p/~p/~p,~n",[Date,Y,M,D]),
    io:format("The time tuple (~p) indicates : ~p/~p/~p/~n",[Time,H,Min,S]);

valid_time(_)->
    io:format("Stop feeding me wrong data ! ~n").

%% Recursive functions 
%% fibonocci 


fac(N) when N == 0 -> 1;
fac(N)  -> N*fac(N-1).


%% list count 

len([]) -> 0;
len([_]) -> 1;
len([_|T]) -> 1 + len(T).


