#> asset:mob/0022.red_knight/tick/2.3.skill_active
#
# スキル発動すれ
#
# @within function asset:mob/0022.red_knight/tick/2.tick

# 剣スキル1
    execute if entity @s[tag=M.SkillSword] run function asset:mob/0022.red_knight/tick/2.4.skill_sword

# 乱切りスキル
    execute if entity @s[tag=M.SkillSlash] run function asset:mob/0022.red_knight/tick/2.6.skill_slash

# 剣ビームスキル
    execute if entity @s[tag=M.SkillBeam] run function asset:mob/0022.red_knight/tick/2.8.skill_beam