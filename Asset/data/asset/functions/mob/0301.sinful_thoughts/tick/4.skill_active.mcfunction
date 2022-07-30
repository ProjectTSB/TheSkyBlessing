#> asset:mob/0301.sinful_thoughts/tick/4.skill_active
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/2.tick

# 斧
    execute if entity @s[tag=8D.SkillAxe] run function asset:mob/0301.sinful_thoughts/tick/1.axe/1.axe
# 召喚
    execute if entity @s[tag=8D.SkillSummon] run function asset:mob/0301.sinful_thoughts/tick/2.summon/1.summon
# 召喚
    execute if entity @s[tag=8D.SkillSlash] run function asset:mob/0301.sinful_thoughts/tick/3.slash/1.slash