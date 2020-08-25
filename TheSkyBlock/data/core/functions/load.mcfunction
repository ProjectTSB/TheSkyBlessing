#> core:load
#
# #load時に毎回実行される処理群
#
# @within tag/function minecraft:load

forceload add 10000 10000
execute unless block 10000 0 10000 lime_shulker_box run function core:load_once