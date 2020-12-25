#> asset:sacred_treasure/0035.malleus_maleficarum/3.1.check_hit_manager
#
# エンダーパールがヒットしたかどうかを確認
#
# @within function
#   asset:sacred_treasure/0035.malleus_maleficarum/3.main
#   asset:sacred_treasure/0035.malleus_maleficarum/3.1.check_hit_manager
#   asset:sacred_treasure/0035.malleus_maleficarum/3.1.1.flying

#> private
# @private 
   #declare tag MalleusMaleficarumIndicator

#アーマースタンドがエンダーパールの上に乗っていない状態なら命中処理
execute as @e[tag=MalleusMaleficarumIndicator] unless predicate asset:0035.malleus_maleficarum/is_ride_on_enderpearl at @s run function asset:sacred_treasure/0035.malleus_maleficarum/3.1.2.witchification

#アーマースタンドがエンダーパールの上に乗っている状態なら飛翔処理
execute as @e[tag=MalleusMaleficarumIndicator] if predicate asset:0035.malleus_maleficarum/is_ride_on_enderpearl at @s run function asset:sacred_treasure/0035.malleus_maleficarum/3.1.1.flying

