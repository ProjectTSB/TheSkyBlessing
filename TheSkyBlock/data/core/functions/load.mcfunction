#> core:load
#
# #load時に毎回実行される処理群
#
# @within tag/function minecraft:load

execute unless data storage global {Version:"0.0.1"} run function core:load_once