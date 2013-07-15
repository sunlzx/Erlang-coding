%% Copyright
-module(tut).
-author("sunlzx").

%% API
-export([main/0]).
-export([add/0]).

add() ->

  X = 1.

hello() ->
  io:format("Hello Erlang ~n").


fac(1) ->
  1;
fac(N) ->
  fac(N) * fac(N - 1).



main() ->
  hello(),
  hello(),
  Pid = self(),
  {Year, Mon, Day} = date(),
  {Hour, Min, Sec} = time(),
  io:format("~B-~2..0B-~2..0B ~2..0B:~2..0B:~2..0B", [Year, Mon, Day, Hour, Min, Sec]),

  io:format("~B", 1),
  tut:add().

