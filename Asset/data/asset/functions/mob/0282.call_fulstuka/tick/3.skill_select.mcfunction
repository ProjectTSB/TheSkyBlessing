#> asset:mob/0282.call_fulstuka/tick/3.skill_select
#
#
#
# @within function asset:mob/0282.call_fulstuka/tick/2.tick

#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算する
    scoreboard players operation $Random Temporary %= $2 Const

# デバッグのコマンド
    # scoreboard players set $Random Temporary 1

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 7U.SkillGun
    execute if score $Random Temporary matches 1 run tag @s add 7U.SkillMelee
# リセット
    scoreboard players reset $Random Temporary