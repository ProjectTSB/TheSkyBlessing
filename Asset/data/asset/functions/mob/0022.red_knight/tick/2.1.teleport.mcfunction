#> asset:mob/0022.red_knight/tick/2.1.teleport
#
#
#
# @within function
#   asset:mob/0022.red_knight/tick/**

# 演出
   particle dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.7 0.9 0

# ワープ準備
    execute at @p[distance=..100] run summon marker ~ ~40 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 4
    data modify storage lib: Argument.Spread set value 2d
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @p[distance=..100] positioned ~ ~40 ~ rotated ~ 90 run function lib:forward_spreader/circle

# アマスタにタグを付与
    tag @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] add M.ArmorStandThis

# ワープ
    execute at @p[distance=..100] positioned ~ ~40 ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ^ ^ ^40 if block ~ ~ ~ #lib:no_collision_without_fluid run tp @s ~ ~ ~ facing entity @p[distance=..100]

# アマスタを持ってきてタグを消す
    tp @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] @s
    tag @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] remove M.ArmorStandThis

# リセット
    kill @e[type=marker,tag=SpreadMarker]