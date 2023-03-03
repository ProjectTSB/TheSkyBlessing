#> asset:artifact/0035.malleus_maleficarum/trigger/rejoin_process
#
# 使い方は必ずwikiを見ること
#
# @within tag/function asset:rejoin

# 次tickのmanager実行予約
    execute if entity @e[type=armor_stand,tag=MalleusMaleficarumIndicator,predicate=asset:artifact/0035.malleus_maleficarum/is_ride_on_enderpearl] run schedule function asset:artifact/0035.malleus_maleficarum/trigger/3.1.entity_manager 1t replace