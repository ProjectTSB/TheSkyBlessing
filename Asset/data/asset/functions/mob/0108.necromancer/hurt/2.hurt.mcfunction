#> asset:mob/0108.necromancer/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0108.necromancer/hurt/1.trigger
# @within function asset:mob/0108.necromancer/tick/3.summon_and_shoot

# 演出
    particle witch ~ ~1.2 ~ 0.4 0.3 0.4 0 20 normal @a
    particle dragon_breath ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    playsound entity.enderman.teleport master @a ~ ~ ~ 1 1 0

# ワープ
    summon marker ~ ~ ~ {Tags:["30.SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 10
    data modify storage lib: Argument.Spread set value 4.633d
    execute as @e[type=marker,tag=30.SpreadMarker,limit=1] positioned ~ ~25 ~ rotated ~ 90 run function lib:forward_spreader/circle

# スプレッドマーカーが自分の周辺にあるのでそれのある方向に地上に平行に4ブロック移動する
    execute facing entity @e[type=marker,tag=30.SpreadMarker,limit=1] feet rotated ~ 0 if block ^ ^0.5 ^4 #lib:no_collision_without_fluid if block ^ ^1.5 ^4 #lib:no_collision_without_fluid if block ^ ^2.5 ^4 #lib:no_collision_without_fluid run tp @s ^ ^ ^4
# マーカーをキル
    kill @e[type=marker,tag=30.SpreadMarker]