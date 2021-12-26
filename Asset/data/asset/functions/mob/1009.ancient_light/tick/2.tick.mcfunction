#> asset:mob/1009.ancient_light/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1009.ancient_light/tick/1.trigger

# 追尾する
    execute if entity @p[distance=..32] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.5 ~ ~

# particle
    particle dust 1 1000000000 1000000000 1 ~ ~ ~ 0.3 0.3 0.3 1 20 normal @a

# ダメージ
    execute if entity @a[gamemode=!spectator,distance=..2] run function asset:mob/1009.ancient_light/tick/3.damage