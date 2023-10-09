#> asset:mob/0319.haruclaire_ice_bullet/tick/summon/effect_shot
#
# Mobのtick時の処理
#
# @within function asset:mob/0319.haruclaire_ice_bullet/tick/summon/main

# 演出
    playsound block.amethyst_block.resonate hostile @a ~ ~ ~ 1 2
    playsound block.amethyst_block.resonate hostile @a ~ ~ ~ 1 2
    playsound block.amethyst_block.resonate hostile @a ~ ~ ~ 1 2

# 発射方向決定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 3
    data modify storage lib: Argument.Spread set value 1
    execute facing entity @p[gamemode=!spectator,distance=..30] feet as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    execute if entity @s[tag=!8V.IsIceRain] facing entity @p feet run tp @s ~ ~ ~ ~ ~

# リセット
    kill @e[type=marker,tag=SpreadMarker]