#> asset:mob/0046.clock_of_despair/tick/skill/8_oclock
#
# 時計レーザー + 固定火
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

#> Val
# @private
#declare score_holder $LazerDirection

# # 時計レーザーの恐怖
#     execute if score @s 1A.LifeTime matches 1610 store result score $LazerDirection Temporary run function lib:random/
#     execute if score @s 1A.LifeTime matches 1610 run scoreboard players operation $LazerDirection Temporary %= $4 Const
#     execute if score @s 1A.LifeTime matches 1610 if score $LazerDirection Temporary matches 0 positioned ~007 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
#     execute if score @s 1A.LifeTime matches 1610 if score $LazerDirection Temporary matches 1 positioned ~016 ~6 ~007 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
#     execute if score @s 1A.LifeTime matches 1610 if score $LazerDirection Temporary matches 2 positioned ~-07 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
#     execute if score @s 1A.LifeTime matches 1610 if score $LazerDirection Temporary matches 3 positioned ~-16 ~6 ~-07 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
#     execute if score @s 1A.LifeTime matches 1610 run scoreboard players reset $LazerDirection Temporary

# 火召喚
    execute if score @s 1A.LifeTime matches 1610 rotated ~20 ~ positioned ^ ^ ^8 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1612 rotated ~40 ~ positioned ^ ^ ^7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1614 rotated ~60 ~ positioned ^ ^ ^6 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1616 rotated ~80 ~ positioned ^ ^ ^5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1618 rotated ~100 ~ positioned ^ ^ ^4 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1620 rotated ~120 ~ positioned ^ ^ ^3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1622 rotated ~140 ~ positioned ^ ^ ^2 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1624 rotated ~160 ~ positioned ^ ^ ^1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

    execute if score @s 1A.LifeTime matches 1610 rotated ~20 ~ positioned ^ ^ ^-8 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1612 rotated ~40 ~ positioned ^ ^ ^-7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1614 rotated ~60 ~ positioned ^ ^ ^-6 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1616 rotated ~80 ~ positioned ^ ^ ^-5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1618 rotated ~100 ~ positioned ^ ^ ^-4 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1620 rotated ~120 ~ positioned ^ ^ ^-3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1622 rotated ~140 ~ positioned ^ ^ ^-2 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1624 rotated ~160 ~ positioned ^ ^ ^-1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

# 火攻撃
    execute if score @s 1A.LifeTime matches 1630 at @e[type=marker,tag=1A.SkillFireMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/damage

# 火召喚
    execute if score @s 1A.LifeTime matches 1640 positioned ^ ^ ^1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1640 positioned ^ ^ ^-1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1640 positioned ^1 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1640 positioned ^-1 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

    execute if score @s 1A.LifeTime matches 1642 positioned ^ ^ ^3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1642 positioned ^ ^ ^-3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1642 positioned ^3 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1642 positioned ^-3 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

    execute if score @s 1A.LifeTime matches 1644 positioned ^ ^ ^5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1644 positioned ^ ^ ^-5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1644 positioned ^5 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1644 positioned ^-5 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

    execute if score @s 1A.LifeTime matches 1646 positioned ^ ^ ^7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1646 positioned ^ ^ ^-7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1646 positioned ^7 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1646 positioned ^-7 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

    execute if score @s 1A.LifeTime matches 1648 positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1648 positioned ^ ^ ^-9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1648 positioned ^9 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1648 positioned ^-9 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

# 火攻撃
    execute if score @s 1A.LifeTime matches 1660 at @e[type=marker,tag=1A.SkillFireMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/damage


# 火召喚
    execute if score @s 1A.LifeTime matches 1670 rotated ~45 ~ positioned ^ ^ ^1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1670 rotated ~45 ~ positioned ^ ^ ^-1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1670 rotated ~45 ~ positioned ^1 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1670 rotated ~45 ~ positioned ^-1 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

    execute if score @s 1A.LifeTime matches 1672 rotated ~45 ~ positioned ^ ^ ^3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1672 rotated ~45 ~ positioned ^ ^ ^-3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1672 rotated ~45 ~ positioned ^3 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1672 rotated ~45 ~ positioned ^-3 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

    execute if score @s 1A.LifeTime matches 1674 rotated ~45 ~ positioned ^ ^ ^5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1674 rotated ~45 ~ positioned ^ ^ ^-5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1674 rotated ~45 ~ positioned ^5 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1674 rotated ~45 ~ positioned ^-5 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

    execute if score @s 1A.LifeTime matches 1676 rotated ~45 ~ positioned ^ ^ ^7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1676 rotated ~45 ~ positioned ^ ^ ^-7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1676 rotated ~45 ~ positioned ^7 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1676 rotated ~45 ~ positioned ^-7 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

    execute if score @s 1A.LifeTime matches 1678 rotated ~45 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1678 rotated ~45 ~ positioned ^ ^ ^-9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1678 rotated ~45 ~ positioned ^9 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1678 rotated ~45 ~ positioned ^-9 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

# 火攻撃
    execute if score @s 1A.LifeTime matches 1690 at @e[type=marker,tag=1A.SkillFireMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/damage