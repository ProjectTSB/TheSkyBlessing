#> asset:mob/0284.lexiel/tick/4.skill_active
#
# スキル使用中タグがついてる間実行し続ける
#
# @within function asset:mob/0284.lexiel/tick/**

# 近接
    execute if entity @s[tag=7W.SkillMelee] run function asset:mob/0284.lexiel/tick/skill/melee/1.melee

# 雷
    execute if entity @s[tag=7W.SkillThunder] run function asset:mob/0284.lexiel/tick/skill/melee/1.melee