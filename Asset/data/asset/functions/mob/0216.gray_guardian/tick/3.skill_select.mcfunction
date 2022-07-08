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
    scoreboard players operation $Random Temporary %= $4 Const

# デバッグのコマンド
    #scoreboard players set $Random Temporary 3

# プレイヤーが遠い場合かつ、斧スキルを選んでしまった場合、テレポできるスキルであるMeleeを使う
    execute unless entity @p[distance=..10] if score $Random Temporary matches 2 run scoreboard players set $Random Temporary 1

# プレイヤーが近い場合かつ、弓スキルを選んでしまった場合斧スキルを使う
    execute if entity @p[distance=..3] if score $Random Temporary matches 1 run scoreboard players set $Random Temporary 2

# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 60.SkillMelee
    execute if score $Random Temporary matches 1 run tag @s add 60.SkillBow
    execute if score $Random Temporary matches 2 run tag @s add 60.SkillAxe
    execute if score $Random Temporary matches 3 run tag @s add 60.SkillImpact

# リセット
    scoreboard players reset $Random Temporary