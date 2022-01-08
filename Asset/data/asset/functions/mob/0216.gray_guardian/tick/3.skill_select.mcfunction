#> asset:mob/0216.gray_guardian/tick/3.skill_select
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/2.tick
#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算する
    scoreboard players operation $Random Temporary %= $3 Const

# デバッグのコマンド
    scoreboard players set $Random Temporary 0

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 60.SkillMelee


    
# リセット
    scoreboard players reset $Random Temporary