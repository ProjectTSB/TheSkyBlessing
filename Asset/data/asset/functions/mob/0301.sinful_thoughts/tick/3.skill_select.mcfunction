#> asset:mob/0301.sinful_thoughts/tick/3.skill_select
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/2.tick
#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算するやーつ
    scoreboard players operation $Random Temporary %= $3 Const

# デバッグのコマンド
    #838scoreboard players set $Random Temporary 2
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 8D.SkillAxe
    execute if score $Random Temporary matches 1 run tag @s add 8D.SkillSummon
    execute if score $Random Temporary matches 2 run tag @s add 8D.SkillSlash
# リセット
    scoreboard players reset $Random Temporary