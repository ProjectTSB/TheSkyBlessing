#> asset:artifact/0005.musket_matchlock/trigger/3.1.entity_manager
#
# エンダーパールがヒットしたかどうかを確認
#
# @within function
#   asset:artifact/0005.musket_matchlock/trigger/3.main
#   asset:artifact/0005.musket_matchlock/trigger/3.1.entity_manager

#アーマースタンドがエンダーパールの上に乗っていない状態なら命中処理
    execute as @e[type=marker,tag=5.MatchlockIndicator] unless predicate lib:is_vehicle at @s run function asset:artifact/0005.musket_matchlock/trigger/3.1.2.damage

#アーマースタンドがエンダーパールの上に乗っている状態なら飛翔処理
    execute as @e[type=marker,tag=5.MatchlockIndicator] if predicate lib:is_vehicle at @s run function asset:artifact/0005.musket_matchlock/trigger/3.1.1.flying

# 次tickのmanager実行予約
    execute if entity @e[type=marker,tag=5.MatchlockIndicator,predicate=lib:is_vehicle,limit=1] run schedule function asset:artifact/0005.musket_matchlock/trigger/3.1.entity_manager 1t replace
