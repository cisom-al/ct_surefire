%%%-------------------------------------------------------------------
%%% @private
%%% @copyright 2012 Ericsson AB.
%%% @doc
%%% @end
%%%-------------------------------------------------------------------
-module(normal_SUITE).

-compile(export_all).

-include_lib("common_test/include/ct.hrl").

all() ->
    [{group, group1},
     {group, group2},
     {group, group3}].

groups() ->
    [{group1, [], [tc1, tc2, tc3]},
     {group2, [], [tc1, tc2]},
     {group3, [], [tc1, tc2]}].

suite() ->
    [].

init_per_suite(Config) ->
    Config.

end_per_suite(_Config) ->
    ok.

suite_cleanup(_Config) -> ok.

init_per_testcase(tc3, Config) ->
    2=1;
init_per_testcase(_TestCase, Config) ->
    Config.

end_per_testcase(_TestCase, _Config) ->
    ok.

init_per_group(group3, Config) ->
    1=2;
init_per_group(_Group, Config) ->
    Config.

end_per_group(_Group, _Config) ->
    ok.

tc1(_Config) ->
    ok.

tc2(_Config) ->
    1=2.

tc3(_Config) ->
    ok.
