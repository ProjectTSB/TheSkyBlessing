#> asset:mob/0046.clock_of_despair/tick/skill/10_oclock/10_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 開幕
    execute if score @s 1A.LifeTime matches 1000 run playsound minecraft:block.bell.use master @a
# プレイヤーを引き寄せる
    execute as @a[distance=..30] at @s facing entity @e[type=zombie,tag=this,distance=..100,sort=nearest,limit=1] eyes run tp @s ^ ^ ^0.1

# ランダムでサンダー召喚
    execute if score @s 1A.LifeTime matches 1020 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_spread_summon
    execute if score @s 1A.LifeTime matches 1030 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_spread_summon
    execute if score @s 1A.LifeTime matches 1040 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_spread_summon
    execute if score @s 1A.LifeTime matches 1050 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_spread_summon
    execute if score @s 1A.LifeTime matches 1060 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_spread_summon
    execute if score @s 1A.LifeTime matches 1070 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_spread_summon
    execute if score @s 1A.LifeTime matches 1080 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_spread_summon
    execute if score @s 1A.LifeTime matches 1090 run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_spread_summon
# サンダー召喚
    execute if score @s 1A.LifeTime matches 1020 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_summon
    execute if score @s 1A.LifeTime matches 1030 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_summon
    execute if score @s 1A.LifeTime matches 1040 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_summon
    execute if score @s 1A.LifeTime matches 1050 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_summon
    execute if score @s 1A.LifeTime matches 1060 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_summon
    execute if score @s 1A.LifeTime matches 1070 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_summon
    execute if score @s 1A.LifeTime matches 1080 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_summon
    execute if score @s 1A.LifeTime matches 1090 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_summon
# サンダー攻撃
    execute if score @s 1A.LifeTime matches 1099 at @e[type=area_effect_cloud,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/thunder_damage