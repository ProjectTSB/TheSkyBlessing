#> core:load
#
# #load時に毎回実行される処理群
#
# @within tag/function minecraft:load

execute unless data storage global {Version:19} run function core:load_once
#TODO リリース時はload_once行き
    function #asset:mob/load
    function #asset:sacred_treasure/load