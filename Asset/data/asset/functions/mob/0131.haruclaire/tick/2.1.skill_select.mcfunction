#> asset:mob/0131.haruclaire/tick/2.1.skill_select
#
#
#
# @within function asset:mob/0131.haruclaire/tick/2.tick

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const
# デバッグ用スコア
    #scoreboard players set $Random Temporary 2
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 3N.SkillIceArea
    execute if score $Random Temporary matches 1 run tag @s add 3N.SkillIceCannon
    execute if score $Random Temporary matches 2 run tag @s add 3N.SkillIcePillar
# リセット
    scoreboard players reset $Random Temporary