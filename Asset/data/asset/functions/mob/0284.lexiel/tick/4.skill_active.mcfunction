#> asset:mob/0284.lexiel/tick/4.skill_active
#
#
#
# @within function asset:mob/0284.lexiel/tick/2.tick

# 剣スキル
    execute if entity @s[tag=7W.SkillMelee] run function asset:mob/0284.lexiel/tick/1.skill_melee/1.skill_melee

# 弓スキル
    execute if entity @s[tag=7W.SkillBow] run function asset:mob/0284.lexiel/tick/2.skill_bow/1.skill_bow

# 斧スキル
    execute if entity @s[tag=7W.SkillAxe] run function asset:mob/0284.lexiel/tick/3.skill_axe/1.skill_axe

# 衝撃波
    execute if entity @s[tag=7W.SkillImpact] run function asset:mob/0284.lexiel/tick/4.skill_impact/1.skill_impact