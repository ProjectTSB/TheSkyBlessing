#> asset:sacred_treasure/0005.musket_matchlock/3.1.entity_manager
#
# エンダーパールがヒットしたかどうかを確認
#
# @within function
#   asset:sacred_treasure/0005.musket_matchlock/3.main
#   asset:sacred_treasure/0005.musket_matchlock/3.1.entity_manager

#アーマースタンドがエンダーパールの上に乗っていない状態なら命中処理
    execute as @e[type=armor_stand,tag=5.MatchlockIndicator] unless predicate asset:sacred_treasure/0005.musket_matchlock/is_ride_on_snowball at @s run function asset:sacred_treasure/0005.musket_matchlock/3.1.2.damage

#アーマースタンドがエンダーパールの上に乗っている状態なら飛翔処理
    execute as @e[type=armor_stand,tag=5.MatchlockIndicator] if predicate asset:sacred_treasure/0005.musket_matchlock/is_ride_on_snowball at @s run function asset:sacred_treasure/0005.musket_matchlock/3.1.1.flying

# 次tickのmanager実行予約
    execute if entity @e[type=armor_stand,tag=5.MatchlockIndicator,predicate=asset:sacred_treasure/0005.musket_matchlock/is_ride_on_snowball,limit=1] run schedule function asset:sacred_treasure/0005.musket_matchlock/3.1.entity_manager 1t replace
