#> asset:mob/0284.lexiel/tick/skill/thunder/summon_thunder
#
#
#
# @within function asset:mob/0284.lexiel/tick/skill/thunder/1.thunder

# 召喚
    summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:60,Tags:["Object","7W.SkillThunderMaker","7W.SkillThunderMakerThis"]}

# ランダムテレポート
    data modify storage lib: Argument.Bounds set value [[14d,14d],[0d,0d],[14d,14d]]
    execute as @e[type=area_effect_cloud,tag=7W.SkillThunderMakerThis,distance=..0.01,sort=nearest,limit=1] at @r[distance=..100] run function lib:spread_entity/

# 演出
    execute at @e[type=area_effect_cloud,tag=7W.SkillThunderMakerThis,distance=..40,sort=nearest,limit=1] run playsound minecraft:entity.puffer_fish.death hostile @a ~ ~ ~ 1 0.3

# リセット
    tag @e[type=area_effect_cloud,tag=7W.SkillThunderMakerThis,distance=..40,sort=nearest,limit=1] remove 7W.SkillThunderMakerThis
    data remove storage lib: Argument