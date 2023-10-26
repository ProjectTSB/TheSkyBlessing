#> asset:mob/0327.eclael/tick/app.1_11.select_skill_latter_hard_former
#
# 使用するスキルを決定する・後半戦の前半
#
# @within function asset:mob/0327.eclael/tick/app.1_3.select_skill_latter

# カウント増加
    scoreboard players add @s 93.ActionCount 1

# カウントリセット
    execute if score @s 93.ActionCount matches 26.. run scoreboard players set @s 93.ActionCount 1

# 待機
    execute if score @s 93.ActionCount matches ..1 run tag @s add 93.Skill.Latter.Idle
# 大技：長剣
    execute if score @s 93.ActionCount matches 2 run tag @s add 93.Skill.Latter.Whip
# 通常攻撃・最大3回
    execute if score @s 93.ActionCount matches 3..5 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：移動射撃
    execute if score @s 93.ActionCount matches 6 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
# 移動
    execute if score @s 93.ActionCount matches 7 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
# 通常攻撃・最大2回
    execute if score @s 93.ActionCount matches 8..9 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 移動
    execute if score @s 93.ActionCount matches 10 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
# 大技：回転斬り
    execute if score @s 93.ActionCount matches 11 run tag @s add 93.Skill.Latter.SpinSlash
# 移動・帰還
    execute if score @s 93.ActionCount matches 12 run function asset:mob/0327.eclael/tick/app.1_11_2.select_skill_latter_hard_former_moveback
# 通常攻撃・最大2回
    execute if score @s 93.ActionCount matches 13..14 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：移動射撃
    execute if score @s 93.ActionCount matches 15 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
# 移動
    execute if score @s 93.ActionCount matches 16 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
# 通常攻撃・最大2回
    execute if score @s 93.ActionCount matches 17..18 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：長剣
    execute if score @s 93.ActionCount matches 19 run tag @s add 93.Skill.Latter.Whip
# 待機
    execute if score @s 93.ActionCount matches 20 run tag @s add 93.Skill.Latter.Idle
# 大技：移動射撃
    execute if score @s 93.ActionCount matches 21 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
# 移動
    execute if score @s 93.ActionCount matches 22 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
# 通常攻撃・最大3回
    execute if score @s 93.ActionCount matches 23..25 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
