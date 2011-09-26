-module(person).
-export([greet/2]).
-author(saurabh).

greet(male,Name) ->
    io:format("Hello,Mr. ~s!",[Name]);
greet(female,Name) ->
    io:format("Hello miss. ~s!",[Name]);
greet(_,Name) ->
    io:format("Hello, ~s!",[Name]).


