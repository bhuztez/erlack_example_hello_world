-module(erlack_example_hello_world).

-export([start/0, start/1, handle/0]).

start() ->
    start(8000).

start(Port) ->
    erlack_debug_server:start(Port, [], {?MODULE, handle, []}).

handle() ->
    { response,
      {200, <<"OK">>},
      #{<<"Content-Type">> => <<"text/plain">>},
      <<"OK">>
    }.
