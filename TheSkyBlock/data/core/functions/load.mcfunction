#> core:load
#
# #load時に毎回実行される処理群
#
# @within tag/function minecraft:load

execute unless data storage global {Version:25} run function core:load_once
function asset_manager:sacred_treasure/load
#TODO リリース時はload_once行き
    function #asset:mob/load
    function #asset:sacred_treasure/load