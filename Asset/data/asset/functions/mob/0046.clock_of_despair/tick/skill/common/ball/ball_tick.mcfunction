#> asset:mob/0046.clock_of_despair/tick/skill/common/ball/ball_tick
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/schedule

# 追尾
    execute if entity @p[distance=..32] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.3 ~ ~

# particle
    particle wax_on ~ ~ ~ 0.1 0.1 0.1 1 10 normal @a

# ダメージ
    execute if entity @a[distance=..1] run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/ball_damage