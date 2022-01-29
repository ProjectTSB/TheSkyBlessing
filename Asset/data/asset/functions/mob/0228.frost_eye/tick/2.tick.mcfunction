#> asset:mob/0228.frost_eye/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0228.frost_eye/tick/1.trigger

# 演出
    execute positioned ^ ^ ^-0.5 run particle snowflake ~ ~1.7 ~ 0.2 0.2 0.2 0 1 normal @a

# 氷渡り
    execute if block ~ ~-0.5 ~ water run fill ~0.5 ~-0.5 ~0.5 ~-0.5 ~-0.5 ~-0.5 frosted_ice replace water

# 粉雪対策で追尾能力
    execute if block ~ ~ ~ powder_snow if entity @p[gamemode=!spectator,distance=..32] facing entity @p[gamemode=!spectator,distance=..32] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~
