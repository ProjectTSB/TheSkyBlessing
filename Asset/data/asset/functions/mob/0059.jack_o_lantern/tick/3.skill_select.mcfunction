#> asset:mob/0059.jack_o_lantern/tick/3.skill_select
#
# スキル設定
#
# @within function asset:mob/0059.jack_o_lantern/tick/2.tick

#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算する
    scoreboard players operation $Random Temporary %= $3 Const

# デバッグのコマンド
    #scoreboard players set $Random Temporary 0

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 1N.SkillQuiz
    execute if score $Random Temporary matches 1 run tag @s add 1N.SkillMeteor
    execute if score $Random Temporary matches 2 run tag @s add 1N.SkillMissile
# リセット
    scoreboard players reset $Random Temporary