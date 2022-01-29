#> asset:mob/0228.frost_eye/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0228.frost_eye/tick/1.trigger

# 演出
    execute positioned ^ ^ ^-0.5 run particle snowflake ~ ~1.7 ~ 0.2 0.2 0.2 0 1 normal @a

# 氷渡り
    execute if block ~ ~-0.5 ~ #asset:mob/0228.frost_eye/freezable run fill ~1 ~-0.5 ~1 ~-1 ~-0.5 ~-1 frosted_ice replace #asset:mob/0228.frost_eye/freezable

# 粉雪対策で追尾能力
    execute if block ~ ~ ~ powder_snow if entity @p[gamemode=!spectator,distance=2..32] facing entity @p[gamemode=!spectator,distance=..32] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~
    execute if block ~ ~ ~ powder_snow run effect give @s speed 1 4 true

# なんか埋まることがあるのでtp
    execute unless block ~ ~ ~ #lib:no_collision_without_fluid run tp @s ~ ~0.1 ~