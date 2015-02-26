%%
 % - Create an Earth!
 % - Create some Inhabitants!
 % - Give them a (100ms) life to live!
 % - Make them sociable!
 %    - if they meet a zombie... they die.
 %    - if they get old... they die.
 % - Turn them into zombies when they die!
 % - If/when the world is overrun, nuke it from orbit and try again.
%%
-module(life_and_death).
-export([init/0,earth/1]).

init() ->
  Earth = spawn_link(?MODULE, earth, [{}]),
  ok.

earth(Inhabitants) ->
  receive
    Something ->
      io:format("~p", [something]);
    _ ->
      io:format("Will anyone ever hear me?")
  end,
  earth(Inhabitants).

human() ->
  howdy.

zombie() ->
  blargh.

biological_clock() ->
  ok.
  

