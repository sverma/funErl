-module(tailRecursions).
-export([fac/1]).

fac(N) -> facT(N,1). 

facT(0,Acc) -> Acc;
facT(N,Acc) -> (N)*facT(N-1,Acc).
