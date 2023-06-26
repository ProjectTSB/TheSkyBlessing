#> asset:mob/0284.lexiel/tick/schedule
#
# 1tickにつき1回しか実行されないようなものをいれる
#
# @within function asset:mob/0284.lexiel/tick/2.tick

# 雷用パーティクル
    execute as @e[type=area_effect_cloud,tag=7W.SkillThunderMaker] at @s run function asset:mob/0284.lexiel/tick/particle/particle1