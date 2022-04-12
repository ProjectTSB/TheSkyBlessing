#> asset:mob/0120.convict/tick/3.skill_select
#
#
#
# @within function asset:mob/0120.convict/tick/2.tick
#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算するやーつ
    scoreboard players operation $Random Temporary %= $4 Const

# デバッグのコマンド
    #scoreboard players set $Random Temporary 3
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 3C.SkillThunder
    execute if score $Random Temporary matches 1 run tag @s add 3C.SkillMelee
    execute if score $Random Temporary matches 2 run tag @s add 3C.SkillMelee2
    execute if score $Random Temporary matches 3 run tag @s add 3C.SkillGun
# リセット
    scoreboard players reset $Random Temporary