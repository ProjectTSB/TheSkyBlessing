#> asset:mob/0228.frost_eye/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0228.frost_eye/tick/1.trigger

# 演出
    execute positioned ^ ^ ^-0.5 run particle snowflake ~ ~1.7 ~ 0.2 0.2 0.2 0 1 normal @a

# 氷渡り
    execute if block ~ ~-0.5 ~ water run fill ~0.5 ~-0.5 ~0.5 ~-0.5 ~-0.5 ~-0.5 frosted_ice replace water