-module(guards).
-export([old_enough/1,checkIfBehaviour/0,help_me/1]).

old_enough(X) when X > 16 -> 
    true ;
old_enough(_) -> 
    false.

checkIfBehaviour() ->
    if 1 =:= 1 ->
        works
    end,
    if 1 =:= 2; 1 =:= 1 -> 
        works
    end,
    if 1 =:= 2, 1 =:= 1 ->
        fails
    end.

help_me(Animal) -> 
    Talk = if Animal == cat -> "meow";
              Animal == dog -> "bark";
              Animal == beef -> "mooo";
              true -> "fgdadfgna"
           end , 
    {Animal , "says" ++ Talk ++ "!"}. 
