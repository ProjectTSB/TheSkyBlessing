#> asset:mob/0129.lexiel/tick/2.1.teleport
#
# テレポート。このモブはこれでしか移動しない
#
# @within function asset:mob/0129.lexiel/tick/**

# 演出
   particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.4 0
   playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 0.9 0

# ワープ準備
    execute at @p run summon marker ~ ~40 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 4
    data modify storage lib: Argument.Spread set value 2d
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @p positioned ~ ~40 ~ rotated ~ 90 run function lib:forward_spreader/circle

# アマスタにタグを付与
    tag @e[type=armor_stand,tag=3L.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 3L.ArmorStandThis

# ワープ
    execute at @p positioned ~ ~40 ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ^ ^ ^40 if block ~ ~ ~ #lib:no_collision_without_fluid run tp @s ~ ~ ~ facing entity @p

# アマスタを持ってきてタグを消す
    tp @e[type=armor_stand,tag=3L.ArmorStandThis,sort=nearest,limit=1] @s
    tag @e[type=armor_stand,tag=3L.ArmorStandThis,sort=nearest,limit=1] remove 3L.ArmorStandThis

# リセット
    kill @e[type=marker,tag=SpreadMarker]