#> asset:mob/0327.eclael/tick/app.1_6.select_skill_latter_normal
#
# 使用するスキルを決定する・後半戦
#
# @within function asset:mob/0327.eclael/tick/app.1_3.select_skill_latter

# カウント増加
    scoreboard players add @s 93.ActionCount 1

# カウントリセット
    execute if score @s 93.ActionCount matches 32.. run scoreboard players set @s 93.ActionCount 1

# 待機
    execute if score @s 93.ActionCount matches ..1 run tag @s add 93.Skill.Latter.Idle
# 大技：長剣
    execute if score @s 93.ActionCount matches 2 run tag @s add 93.Skill.Latter.Whip
# 通常攻撃・最大5回
    execute if score @s 93.ActionCount matches 3..7 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：七連斬り
    execute if score @s 93.ActionCount matches 8 run tag @s add 93.Skill.Latter.Quick
# 待機
    execute if score @s 93.ActionCount matches 9 run tag @s add 93.Skill.Latter.Idle
# 通常攻撃・最大3回
    execute if score @s 93.ActionCount matches 10..12 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：回転斬り
    execute if score @s 93.ActionCount matches 13 run tag @s add 93.Skill.Latter.SpinSlash
# 通常攻撃・最大4回
    execute if score @s 93.ActionCount matches 14..17 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：移動射撃
    execute if score @s 93.ActionCount matches 18 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
# 待機・2回
    execute if score @s 93.ActionCount matches 19..20 run tag @s add 93.Skill.Latter.Idle
# 通常攻撃・最大3回
    execute if score @s 93.ActionCount matches 21..23 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：七連斬り
    execute if score @s 93.ActionCount matches 24 run tag @s add 93.Skill.Latter.Quick
# 待機
    execute if score @s 93.ActionCount matches 25 run tag @s add 93.Skill.Latter.Idle
# 大技：移動射撃
    execute if score @s 93.ActionCount matches 26 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
# 待機
    execute if score @s 93.ActionCount matches 27 run tag @s add 93.Skill.Latter.Idle
# 通常攻撃・最大2回
    execute if score @s 93.ActionCount matches 28..29 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：回転斬り
    execute if score @s 93.ActionCount matches 30 run tag @s add 93.Skill.Latter.SpinSlash
# 待機
    execute if score @s 93.ActionCount matches 31 run tag @s add 93.Skill.Latter.Idle
