#> asset:mob/0131.haruclaire/tick/teleport
#
# テレポ。レクシエルと一緒
#
# @within function asset:mob/0131.haruclaire/tick/**

# 演出
   particle minecraft:dust 0.569 0.957 1 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   playsound minecraft:block.glass.break hostile @a

# ワープ準備
    execute at @p[gamemode=!spectator] run summon marker ~ ~40 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 4
    data modify storage lib: Argument.Spread set value 2d
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @p positioned ~ ~40 ~ rotated ~ 90 run function lib:forward_spreader/circle

# アマスタにタグを付与
    tag @e[type=armor_stand,tag=3N.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 3N.ArmorStandThis

# ワープ
    execute at @p positioned ~ ~40 ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ^ ^ ^40 if block ~ ~ ~ #lib:no_collision_without_fluid run tp @s ~ ~ ~ facing entity @p

# アマスタを持ってきてタグを消す
    tp @e[type=armor_stand,tag=3N.ArmorStandThis,sort=nearest,limit=1] @s
    tag @e[type=armor_stand,tag=3N.ArmorStandThis,sort=nearest,limit=1] remove 3N.ArmorStandThis

# リセット
    kill @e[type=marker,tag=SpreadMarker]