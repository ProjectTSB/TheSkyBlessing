#> asset:mob/0175.queen_bee/tick/teleport
#
#
#
# @within function asset:mob/0175.queen_bee/tick/**

# 演出
   particle dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.7 0.9 0

# ワープ準備
    execute at @p run summon marker ~ ~40 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 4
    data modify storage lib: Argument.Spread set value 2d
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @p positioned ~ ~40 ~ rotated ~ 90 run function lib:forward_spreader/circle

# アマスタにタグを付与
    tag @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 4V.ArmorStandThis

# ワープ
    execute at @p positioned ~ ~40 ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ^ ^ ^40 if block ~ ~ ~ #lib:no_collision_without_fluid run tp @s ~ ~2 ~ facing entity @p

# アマスタを持ってきてタグを消す
    tp @e[type=armor_stand,tag=4V.ArmorStandThis,sort=nearest,limit=1] @s
    tag @e[type=armor_stand,tag=4V.ArmorStandThis,sort=nearest,limit=1] remove 4V.ArmorStandThis

# リセット
    kill @e[type=marker,tag=SpreadMarker]