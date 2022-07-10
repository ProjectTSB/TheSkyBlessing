#> asset:mob/0046.clock_of_despair/tick/skill/9_oclock
#
# レーザー＋火
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 開幕
    execute if score @s 1A.LifeTime matches 900 run playsound minecraft:block.bell.use master @a
# ビームを出す
    execute if score @s 1A.LifeTime matches 901 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/beam_summon
    execute if score @s 1A.LifeTime matches 901 run tp @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] ~ ~10 ~ 180 90

# ビームが追尾する
    execute if score @s 1A.LifeTime matches 921..999 as @e[type=area_effect_cloud,tag=1A.SkillBeam,distance=..100] at @s run execute if entity @p[distance=..32] facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# 火召喚
    execute if score @s 1A.LifeTime matches 970 rotated ~45 ~ positioned ^ ^ ^1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 970 rotated ~45 ~ positioned ^ ^ ^-1 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 970 rotated ~45 ~ positioned ^1 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 970 rotated ~45 ~ positioned ^-1 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 972 rotated ~45 ~ positioned ^ ^ ^3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 972 rotated ~45 ~ positioned ^ ^ ^-3 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 972 rotated ~45 ~ positioned ^3 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 972 rotated ~45 ~ positioned ^-3 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 974 rotated ~45 ~ positioned ^ ^ ^5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 974 rotated ~45 ~ positioned ^ ^ ^-5 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 974 rotated ~45 ~ positioned ^5 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 974 rotated ~45 ~ positioned ^-5 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 976 rotated ~45 ~ positioned ^ ^ ^7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 976 rotated ~45 ~ positioned ^ ^ ^-7 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 976 rotated ~45 ~ positioned ^7 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 976 rotated ~45 ~ positioned ^-7 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

    execute if score @s 1A.LifeTime matches 978 rotated ~45 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 978 rotated ~45 ~ positioned ^ ^ ^-9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 978 rotated ~45 ~ positioned ^9 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon
    execute if score @s 1A.LifeTime matches 978 rotated ~45 ~ positioned ^-9 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_summon

# 火攻撃
    execute if score @s 1A.LifeTime matches 990 at @e[type=area_effect_cloud,tag=1A.SkillFireMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/fire_damage