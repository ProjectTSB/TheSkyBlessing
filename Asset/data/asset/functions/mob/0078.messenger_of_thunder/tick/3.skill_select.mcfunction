#> asset:mob/0078.messenger_of_thunder/tick/3.skill_select
#
# スキル選択
#
# @within function asset:mob/0078.messenger_of_thunder/tick/2.tick

#> Private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const
# ランダムの数値をスキル選択スコアと同じに
    scoreboard players operation @s 26.SkillSelect = $Random Temporary
# リセット
    scoreboard players reset $Random Temporary