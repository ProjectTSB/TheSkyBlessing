#> asset:mob/0078.messenger_of_thunder/tick/4.skill_branch
#
# スキルを分岐して実行するfunction
#
# @within function asset:mob/0078.messenger_of_thunder/tick/2.tick

# 震雷
    execute if entity @s[scores={26.SkillSelect=0}] run function asset:mob/0078.messenger_of_thunder/skill/1/1

# 執雷
    execute if entity @s[scores={26.SkillSelect=1}] run function asset:mob/0078.messenger_of_thunder/skill/2/1

# 瞬雷
    execute if entity @s[scores={26.SkillSelect=2}] run function asset:mob/0078.messenger_of_thunder/skill/3/1

# 幕雷
    execute if entity @s[scores={26.SkillSelect=3}] run function asset:mob/0078.messenger_of_thunder/skill/4/1