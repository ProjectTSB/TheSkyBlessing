#> asset:mob/0175.queen_bee/tick/4.skill_active
#
#
#
# @within function asset:mob/0175.queen_bee/tick/2.tick

# 突進
    execute if entity @s[tag=4V.SkillTackle] run function asset:mob/0175.queen_bee/tick/skill_tackle/1.skill_tackle
# 召喚
    execute if entity @s[tag=4V.SkillSummon] run function asset:mob/0175.queen_bee/tick/skill_summon/1.skill_summon
# 針
    execute if entity @s[tag=4V.SkillNeedle] run function asset:mob/0175.queen_bee/tick/skill_needle/1.skill_needle