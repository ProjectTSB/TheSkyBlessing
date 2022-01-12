#> asset:mob/0237.lunatic_mage/tick/04.skill_branch
#
# 各スキルの技のfunctionに分岐します
#
# @within function asset:mob/0237.lunatic_mage/tick/2.tick

# スキル共通スコア
    scoreboard players add @s 6J.SkillTick 1

# 雷
    execute if entity @s[tag=6J.Thunder] run function asset:mob/0237.lunatic_mage/skill/thunder/01.manage