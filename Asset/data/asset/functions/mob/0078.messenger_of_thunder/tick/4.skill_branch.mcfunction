#> asset:mob/0078.messenger_of_thunder/tick/4.skill_branch
#
# スキルを分岐して実行するfunction
#
# @within function asset:mob/0078.messenger_of_thunder/tick/2.tick

# 雷落とし
    execute if entity @s[scores={26.SkillSelect=0}] run function asset:mob/0078.messenger_of_thunder/skill/1/1

# 追尾の雷
    execute if entity @s[scores={26.SkillSelect=1}] run function asset:mob/0078.messenger_of_thunder/skill/2/1

# ワープ
    execute if entity @s[scores={26.SkillSelect=2}] run function asset:mob/0078.messenger_of_thunder/skill/3/1

# 雷のカーテン
    execute if entity @s[scores={26.SkillSelect=3}] run function asset:mob/0078.messenger_of_thunder/skill/4/1

# 十字の雷
    execute if entity @s[scores={26.SkillSelect=4}] run function asset:mob/0078.messenger_of_thunder/skill/5/1