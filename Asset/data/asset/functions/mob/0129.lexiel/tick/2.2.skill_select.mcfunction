#> asset:mob/0129.lexiel/tick/2.2.skill_select
#
# スキルを選ぶよ
#
# @within function asset:mob/0129.lexiel/tick/2.tick

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 3L.SkillSword
    execute if score $Random Temporary matches 1 run tag @s add 3L.SkillMagic
    execute if score $Random Temporary matches 2 run tag @s add 3L.SkillExplode
    execute if score $Random Temporary matches 3 run tag @s add 3L.SkillThunder
# リセット
    scoreboard players reset $Random Temporary