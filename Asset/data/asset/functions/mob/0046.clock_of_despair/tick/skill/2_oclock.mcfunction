#> asset:mob/0046.clock_of_despair/tick/skill/2_oclock
#
# プレイヤーを追尾する
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# ビームを出す
    execute if score @s 1A.LifeTime matches 201 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 201 run tp @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] ~ ~10 ~ 180 90

# ビームが追尾する
    execute if score @s 1A.LifeTime matches 221..299 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run execute if entity @p[distance=..32] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~
