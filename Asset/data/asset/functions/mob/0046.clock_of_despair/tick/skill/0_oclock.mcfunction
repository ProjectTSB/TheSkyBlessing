#> asset:mob/0046.clock_of_despair/tick/skill/0_oclock
#
# ちょっとビビらせる
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 開幕
    execute if score @s 1A.LifeTime matches 0 run playsound minecraft:block.respawn_anchor.set_spawn master @a
    execute if score @s 1A.LifeTime matches 0 run playsound minecraft:block.bell.use master @a

# 視界を揺らす
    execute if score @s 1A.LifeTime matches 1 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~6
    execute if score @s 1A.LifeTime matches 2 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-6
    execute if score @s 1A.LifeTime matches 3 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~5
    execute if score @s 1A.LifeTime matches 4 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-5
    execute if score @s 1A.LifeTime matches 5 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~4
    execute if score @s 1A.LifeTime matches 6 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-4
    execute if score @s 1A.LifeTime matches 7 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~3
    execute if score @s 1A.LifeTime matches 8 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-3
    execute if score @s 1A.LifeTime matches 9 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~2
    execute if score @s 1A.LifeTime matches 10 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-2
    execute if score @s 1A.LifeTime matches 11 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~1
    execute if score @s 1A.LifeTime matches 12 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-1
    execute if score @s 1A.LifeTime matches 13 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~0.5
    execute if score @s 1A.LifeTime matches 14 as @a[distance=..20] at @s run tp @s ~ ~ ~ ~ ~-0.5


# サンダー召喚
    execute if score @s 1A.LifeTime matches 40 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# サンダー攻撃
    execute if score @s 1A.LifeTime matches 60 at @e[type=area_effect_cloud,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage

# サンダー召喚
    execute if score @s 1A.LifeTime matches 60 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
    execute if score @s 1A.LifeTime matches 64 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
    execute if score @s 1A.LifeTime matches 68 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
    execute if score @s 1A.LifeTime matches 72 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
    execute if score @s 1A.LifeTime matches 76 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
    execute if score @s 1A.LifeTime matches 80 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# サンダー攻撃
    execute if score @s 1A.LifeTime matches 90 at @e[type=area_effect_cloud,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage
# サンダー召喚
    execute if score @s 1A.LifeTime matches 90 at @a[distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/summon
# サンダー攻撃
    execute if score @s 1A.LifeTime matches 99 at @e[type=area_effect_cloud,tag=1A.SkillThunderMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/thunder/damage