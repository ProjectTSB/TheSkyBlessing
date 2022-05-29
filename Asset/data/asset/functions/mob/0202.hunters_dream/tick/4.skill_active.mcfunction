#> asset:mob/0202.hunters_dream/tick/4.skill_active
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/2.tick

# 剣
    execute if entity @s[tag=5M.SkillSword] run function asset:mob/0202.hunters_dream/tick/1.skill_sword/1.skill_sword
# 弓
    execute if entity @s[tag=5M.SkillArrow] run function asset:mob/0202.hunters_dream/tick/2.skill_arrow/1.skill_arrow