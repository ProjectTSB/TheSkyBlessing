#> asset:mob/0046.clock_of_despair/tick/skill/9_oclock
#
# レーザー + 外周火
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# ビーム投射
    execute if score @s 1A.LifeTime matches 1801 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 1801 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~5 ~
    execute if score @s 1A.LifeTime matches 1801 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 1801 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~5 ~
    execute if score @s 1A.LifeTime matches 1801 run function asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
    execute if score @s 1A.LifeTime matches 1801 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~45 ~
# ビーム回転
    execute if score @s 1A.LifeTime matches 1801..1820 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~4 ~
    execute if score @s 1A.LifeTime matches 1821..1840 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~6 ~
    execute if score @s 1A.LifeTime matches 1841..1860 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~8 ~
    execute if score @s 1A.LifeTime matches 1861..1940 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~10 ~
    # execute if score @s 1A.LifeTime matches 1861..1880 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~10 ~
    # execute if score @s 1A.LifeTime matches 1881..1900 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~12 ~
    # execute if score @s 1A.LifeTime matches 1901..1920 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~14 ~
    # execute if score @s 1A.LifeTime matches 1921..1940 as @e[type=marker,tag=1A.SkillBeam,distance=..100] at @s run tp @s ~ ~ ~ ~16 ~
    execute if score @s 1A.LifeTime matches 1941 run kill @e[type=marker,tag=1A.SkillBeam,distance=..100]

# 火召喚
    execute if score @s 1A.LifeTime matches 1805 rotated ~000 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1810 rotated ~018 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1815 rotated ~036 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1820 rotated ~054 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1825 rotated ~072 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1830 rotated ~090 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1835 rotated ~108 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1840 rotated ~126 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1845 rotated ~144 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1850 rotated ~162 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1855 rotated ~180 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1860 rotated ~198 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1865 rotated ~216 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1870 rotated ~234 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1875 rotated ~252 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1880 rotated ~270 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1885 rotated ~288 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1890 rotated ~306 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1895 rotated ~324 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon
    execute if score @s 1A.LifeTime matches 1900 rotated ~342 ~ positioned ^ ^ ^9 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon

# 火攻撃
    execute if score @s 1A.LifeTime matches 1960 at @e[type=marker,tag=1A.SkillFireMaker,distance=..100] run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/damage