#> asset:mob/0120.convict/tick/4.skill_active
#
#
#
# @within function asset:mob/0120.convict/tick/2.tick

# 斧
    execute if entity @s[tag=3C.SkillAxe] run function asset:mob/0120.convict/tick/1.axe/1.axe
# 召喚
    execute if entity @s[tag=3C.SkillSummon] run function asset:mob/0120.convict/tick/2.summon/1.summon
# 召喚
    execute if entity @s[tag=3C.SkillSlash] run function asset:mob/0120.convict/tick/3.slash/1.slash