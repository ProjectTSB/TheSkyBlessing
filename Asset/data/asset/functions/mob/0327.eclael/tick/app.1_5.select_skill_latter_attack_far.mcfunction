#> asset:mob/0327.eclael/tick/app.1_5.select_skill_latter_attack_far
#
# 使用するスキルを決定する・後半戦・通常攻撃・遠距離用
#
# @within function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const

# 居合斬り
    execute if score $Random Temporary matches 0 run tag @s add 93.Skill.Latter.Iai
# 射撃
    execute if score $Random Temporary matches 1 run tag @s add 93.Skill.Latter.Shot
# 電光石火
    execute if score $Random Temporary matches 2 run tag @s add 93.Skill.Latter.Move
# 魔法
    execute if score $Random Temporary matches 3 run tag @s add 93.Skill.Latter.Magic

# リセット
    scoreboard players reset $Random Temporary