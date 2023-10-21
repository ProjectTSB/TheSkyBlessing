#> asset:mob/0327.eclael/tick/app.1_10.select_skill_latter_after_move
#
# 使用するスキルを決定する・後半戦・通常攻撃・移動後
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/**

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const

# 袈裟斬り
    execute if score $Random Temporary matches 0 run tag @s add 93.Skill.Latter.MoveSlash
# 居合斬り
    execute if score $Random Temporary matches 1 run tag @s add 93.Skill.Latter.Iai
# 突き
    execute if score $Random Temporary matches 2 run function asset:mob/0327.eclael/tick/app.1_9.select_skill_latter_spear

# リセット
    scoreboard players reset $Random Temporary