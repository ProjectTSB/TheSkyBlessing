#> asset:mob/0175.queen_bee/tick/3.skill_select
#
#
#
# @within function asset:mob/0175.queen_bee/tick/2.tick


# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const
# デバッグのコマンド
    #scoreboard players set $Random Temporary 2
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 4V.SkillTackle
    execute if score $Random Temporary matches 1 run tag @s add 4V.SkillSummon
    execute if score $Random Temporary matches 2 run tag @s add 4V.SkillNeedle
# リセット
    scoreboard players reset $Random Temporary