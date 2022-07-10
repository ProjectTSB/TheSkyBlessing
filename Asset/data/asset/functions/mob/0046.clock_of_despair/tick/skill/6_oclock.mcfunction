#> asset:mob/0046.clock_of_despair/tick/skill/6_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 開幕
    execute if score @s 1A.LifeTime matches 600 run playsound minecraft:block.bell.use master @a

# 火召喚
    execute if score @s 1A.LifeTime matches 610 rotated ~20 ~ positioned ^ ^ ^8 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 612 rotated ~40 ~ positioned ^ ^ ^7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 614 rotated ~60 ~ positioned ^ ^ ^6 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 616 rotated ~80 ~ positioned ^ ^ ^5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 618 rotated ~100 ~ positioned ^ ^ ^4 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 620 rotated ~120 ~ positioned ^ ^ ^3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 622 rotated ~140 ~ positioned ^ ^ ^2 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 624 rotated ~160 ~ positioned ^ ^ ^1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 610 rotated ~20 ~ positioned ^ ^ ^-8 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 612 rotated ~40 ~ positioned ^ ^ ^-7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 614 rotated ~60 ~ positioned ^ ^ ^-6 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 616 rotated ~80 ~ positioned ^ ^ ^-5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 618 rotated ~100 ~ positioned ^ ^ ^-4 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 620 rotated ~120 ~ positioned ^ ^ ^-3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 622 rotated ~140 ~ positioned ^ ^ ^-2 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 624 rotated ~160 ~ positioned ^ ^ ^-1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

# 火攻撃
    execute if score @s 1A.LifeTime matches 630 at @e[type=area_effect_cloud,tag=1A.SkillFireMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_damage

# 火召喚
    execute if score @s 1A.LifeTime matches 640 positioned ^ ^ ^1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 640 positioned ^ ^ ^-1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 640 positioned ^1 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 640 positioned ^-1 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 642 positioned ^ ^ ^3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 642 positioned ^ ^ ^-3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 642 positioned ^3 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 642 positioned ^-3 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 644 positioned ^ ^ ^5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 644 positioned ^ ^ ^-5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 644 positioned ^5 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 644 positioned ^-5 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 646 positioned ^ ^ ^7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 646 positioned ^ ^ ^-7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 646 positioned ^7 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 646 positioned ^-7 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 648 positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 648 positioned ^ ^ ^-9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 648 positioned ^9 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 648 positioned ^-9 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

# 火攻撃
    execute if score @s 1A.LifeTime matches 660 at @e[type=area_effect_cloud,tag=1A.SkillFireMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_damage


# 火召喚
    execute if score @s 1A.LifeTime matches 670 rotated ~45 ~ positioned ^ ^ ^1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 670 rotated ~45 ~ positioned ^ ^ ^-1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 670 rotated ~45 ~ positioned ^1 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 670 rotated ~45 ~ positioned ^-1 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 672 rotated ~45 ~ positioned ^ ^ ^3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 672 rotated ~45 ~ positioned ^ ^ ^-3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 672 rotated ~45 ~ positioned ^3 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 672 rotated ~45 ~ positioned ^-3 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 674 rotated ~45 ~ positioned ^ ^ ^5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 674 rotated ~45 ~ positioned ^ ^ ^-5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 674 rotated ~45 ~ positioned ^5 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 674 rotated ~45 ~ positioned ^-5 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 676 rotated ~45 ~ positioned ^ ^ ^7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 676 rotated ~45 ~ positioned ^ ^ ^-7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 676 rotated ~45 ~ positioned ^7 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 676 rotated ~45 ~ positioned ^-7 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 678 rotated ~45 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 678 rotated ~45 ~ positioned ^ ^ ^-9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 678 rotated ~45 ~ positioned ^9 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 678 rotated ~45 ~ positioned ^-9 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

# 火攻撃
    execute if score @s 1A.LifeTime matches 690 at @e[type=area_effect_cloud,tag=1A.SkillFireMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_damage