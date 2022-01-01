#> asset:mob/0022.red_knight/tick/2.2.skill_select
#
# スキル選ぶぞ
#
# @within function asset:mob/0022.red_knight/tick/2.tick

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const
# デバッグのコマンド
    #scoreboard players set $Random Temporary 3
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add M.SkillSword
    execute if score $Random Temporary matches 1 run tag @s add M.SkillSlash
    execute if score $Random Temporary matches 2 run tag @s add M.SkillBeam
    execute if score $Random Temporary matches 3 run tag @s add M.SkillTpSlash
# リセット
    scoreboard players reset $Random Temporary