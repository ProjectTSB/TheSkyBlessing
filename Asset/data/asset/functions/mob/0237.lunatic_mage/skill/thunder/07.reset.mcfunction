#> asset:mob/0237.lunatic_mage/skill/thunder/07.reset
#
# 雷スキルを終了するためのリセットをするよ
#
# @within function asset:mob/0237.lunatic_mage/skill/thunder/01.manage

# スコアとタグをリセット
    scoreboard players reset @s 6J.Tick
    scoreboard players reset @s 6J.SkillTick
    tag @s remove 6J.Thunder