#> asset:artifact/0035.malleus_maleficarum/trigger/3.1.entity_manager
#
# エンダーパールがヒットしたかどうかを確認
#
# @within function
#   asset:artifact/0035.malleus_maleficarum/trigger/3.main
#   asset:artifact/0035.malleus_maleficarum/trigger/3.1.entity_manager
#   asset:artifact/0035.malleus_maleficarum/trigger/rejoin_process


#アーマースタンドがエンダーパールの上に乗っていない状態なら命中処理
    execute as @e[type=armor_stand,tag=MalleusMaleficarumIndicator] unless predicate asset:artifact/0035.malleus_maleficarum/is_ride_on_enderpearl at @s run function asset:artifact/0035.malleus_maleficarum/trigger/3.1.2.witchification

#アーマースタンドがエンダーパールの上に乗っている状態なら飛翔処理
    execute as @e[type=armor_stand,tag=MalleusMaleficarumIndicator] if predicate asset:artifact/0035.malleus_maleficarum/is_ride_on_enderpearl at @s run function asset:artifact/0035.malleus_maleficarum/trigger/3.1.1.flying

# 次tickのmanager実行予約
    execute if entity @e[type=armor_stand,tag=MalleusMaleficarumIndicator,predicate=asset:artifact/0035.malleus_maleficarum/is_ride_on_enderpearl] run schedule function asset:artifact/0035.malleus_maleficarum/trigger/3.1.entity_manager 1t replace