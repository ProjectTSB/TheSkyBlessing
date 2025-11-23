#> player_manager:fall_damage/deal_damage/on_block_switch
#
#
#
# @within function player_manager:fall_damage/deal_damage/

# 落下ブロック毎の仕様:
#   Bed: <落下距離> *= 0.5
#   Hay: <落下ダメージ倍率> = 0.2
#   Honey: <落下ダメージ倍率> = 0.2
#   PointedDripStone: 上向きの場合<落下距離> += 2.0, <落下ダメージ倍率> += 1.0
#   PowderSnow: 無効
#   Slime: 非スニーク時 <落下距離> = 0

# 落下ブロック毎の処理
    execute if block ~ ~-0.2 ~ #beds run scoreboard players operation $FallDistance Temporary /= $2 Const
    execute if block ~ ~-0.2 ~ hay_block run scoreboard players remove $DamageMultiplier Temporary 8
    execute if block ~ ~-0.2 ~ honey_block run scoreboard players remove $DamageMultiplier Temporary 8
    execute if block ~ ~-0.2 ~ pointed_dripstone[thickness=tip,vertical_direction=up] run scoreboard players add $FallDistance Temporary 20
    execute if block ~ ~-0.2 ~ pointed_dripstone[thickness=tip,vertical_direction=up] run scoreboard players add $DamageMultiplier Temporary 10
    execute if block ~ ~-0.2 ~ pointed_dripstone[thickness=tip,vertical_direction=up] run data modify storage player_manager:fall_damage CustomDeathMessage set value '[{"translate": "death.attack.stalagmite","with":[{"selector":"@s"}]}]'
    execute if block ~ ~-0.2 ~ powder_snow run scoreboard players set $FallDistance Temporary 0
    execute if block ~ ~-0.2 ~ slime_block unless predicate lib:is_sneaking run scoreboard players set $FallDistance Temporary 0
