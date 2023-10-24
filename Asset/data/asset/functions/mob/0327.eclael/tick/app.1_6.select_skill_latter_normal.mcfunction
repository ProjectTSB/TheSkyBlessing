#> asset:mob/0327.eclael/tick/app.1_6.select_skill_latter_normal
#
# 使用するスキルを決定する・後半戦
#
# @within function asset:mob/0327.eclael/tick/app.1_3.select_skill_latter

# カウント増加
    scoreboard players add @s 93.ActionCount 1

# カウントリセット
    execute if score @s 93.ActionCount matches 24.. run scoreboard players set @s 93.ActionCount 1

# 待機
    execute if score @s 93.ActionCount matches ..1 run tag @s add 93.Skill.Latter.Idle
# 大技：長剣
    execute if score @s 93.ActionCount matches 2 run tag @s add 93.Skill.Latter.Whip
# 通常攻撃・最大3回
    execute if score @s 93.ActionCount matches 3..5 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：七連斬り
    execute if score @s 93.ActionCount matches 6 run tag @s add 93.Skill.Latter.Quick
# 待機
    execute if score @s 93.ActionCount matches 7 run tag @s add 93.Skill.Latter.Idle
# 通常攻撃・最大2回
    execute if score @s 93.ActionCount matches 8..9 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：回転斬り
    execute if score @s 93.ActionCount matches 10 run tag @s add 93.Skill.Latter.SpinSlash
# 待機
    execute if score @s 93.ActionCount matches 11 run tag @s add 93.Skill.Latter.Idle
# 通常攻撃・最大2回
    execute if score @s 93.ActionCount matches 12..13 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：移動射撃
    execute if score @s 93.ActionCount matches 14 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
# 待機
    execute if score @s 93.ActionCount matches 15 run tag @s add 93.Skill.Latter.Idle
# 通常攻撃
    execute if score @s 93.ActionCount matches 16 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：七連斬り
    execute if score @s 93.ActionCount matches 17 run tag @s add 93.Skill.Latter.Quick
# 待機
    execute if score @s 93.ActionCount matches 18 run tag @s add 93.Skill.Latter.Idle
# 大技：移動射撃
    execute if score @s 93.ActionCount matches 19 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
# 待機
    execute if score @s 93.ActionCount matches 20 run tag @s add 93.Skill.Latter.Idle
# 通常攻撃・最大2回
    execute if score @s 93.ActionCount matches 21..22 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：回転斬り
    execute if score @s 93.ActionCount matches 23 run tag @s add 93.Skill.Latter.SpinSlash
