#> asset:mob/0216.gray_guardian/tick/4.skill_active
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/2.tick

# 剣スキル
    execute if entity @s[tag=60.SkillMelee] run function asset:mob/0216.gray_guardian/tick/1.skill_melee/1.skill_melee

# 弓スキル
    execute if entity @s[tag=60.SkillBow] run function asset:mob/0216.gray_guardian/tick/2.skill_bow/1.skill_bow