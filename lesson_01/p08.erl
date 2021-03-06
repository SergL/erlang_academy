-module(p08).
-export([compress/1]).

compress(L) ->
   compress(L,[]).

compress([],Acc) ->
   p05:reverse(Acc);
compress([H|T],[]) ->
   compress(T, [H]);
compress([H|T],Acc=[H|_]) ->
   compress(T, Acc);
compress([H|T],Acc) ->
   compress(T, [H|Acc]).
