#> core:tick/4_interval
#
# 4tick毎にschedule実行されます
#
# @within function core:tick/

# スポナー
    function asset_manager:spawner/tick/4_interval
# 島
    function asset_manager:island/tick/4_interval
# 交易
    execute as @e[type=villager,tag=Npc,tag=Trader] at @s run function asset_manager:trader/tick/4_interval
