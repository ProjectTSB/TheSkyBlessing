#> asset:mob/0046.clock_of_despair/tick/skill/2_oclock
#
# ビーム + 時計レーザー
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# ビーム
    execute if score @s 1A.LifeTime matches 401 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 401 run tp @e[type=marker,tag=1A.SkillBeam,distance=..100] ~ ~10.5 ~ 180 90
# ビーム追尾
    execute if score @s 1A.LifeTime matches 421..570 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run execute if entity @p[distance=..32] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~
    execute if score @s 1A.LifeTime matches 571 run kill @e[type=marker,tag=1A.SkillBeam,distance=..100]

# 時計レーザー
    execute if score @s 1A.LifeTime matches 400 positioned ~007 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    # execute if score @s 1A.LifeTime matches 416 positioned ~016 ~6 ~007 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 432 positioned ~-07 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    # execute if score @s 1A.LifeTime matches 448 positioned ~-16 ~6 ~-07 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
