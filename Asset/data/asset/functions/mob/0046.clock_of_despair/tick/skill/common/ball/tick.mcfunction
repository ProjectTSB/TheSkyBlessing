#> asset:mob/0046.clock_of_despair/tick/skill/common/ball/tick
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/tick

# 追尾
    execute if entity @p[distance=..32] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.3 ~ ~

# particle
    particle wax_on ~ ~ ~ 0.1 0.1 0.1 1 10 normal @a

# ダメージ
    execute at @s if entity @a[distance=..2] run function asset:mob/0046.clock_of_despair/tick/skill/common/ball/damage