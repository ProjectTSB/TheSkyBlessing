#> asset:mob/0327.eclael/tick/app.1_12.select_skill_latter_hard_latter
#
# 使用するスキルを決定する・後半戦の前半
#
# @within function asset:mob/0327.eclael/tick/app.1_3.select_skill_latter

# カウント増加
    scoreboard players add @s 93.ActionCount 1

# カウントリセット
    execute if score @s 93.ActionCount matches 23.. run scoreboard players set @s 93.ActionCount 1

# 大技：雷雨
    execute if entity @s[tag=!93.Temp.IsThunder] if score @s 93.ActionCount matches 1 run tag @s add 93.Skill.Latter.Thunderstorm
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.ActionCount matches 1 run scoreboard players add @s 93.ActionCount 1
# 移動
    execute if score @s 93.ActionCount matches 2 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
# 大技：回転斬り
    execute if score @s 93.ActionCount matches 3 run tag @s add 93.Skill.Latter.SpinSlash
# 移動
    execute if score @s 93.ActionCount matches 4 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
# 通常攻撃・3回
    execute if score @s 93.ActionCount matches 5..7 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 大技：移動射撃
    execute if score @s 93.ActionCount matches 8 run function asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
# 移動
    execute if score @s 93.ActionCount matches 9 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
# 通常攻撃・3回
    execute if score @s 93.ActionCount matches 10..12 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 移動
    execute if score @s 93.ActionCount matches 13 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
# 大技：宙船・単発
    execute if score @s 93.ActionCount matches 14 run tag @s add 93.Skill.Latter.Sorafune.Start
# 移動
    execute if score @s 93.ActionCount matches 15 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
# 大技：回転斬り
    execute if score @s 93.ActionCount matches 16 run tag @s add 93.Skill.Latter.SpinSlash
# 通常攻撃・3回
    execute if score @s 93.ActionCount matches 17..19 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
# 移動
    execute if score @s 93.ActionCount matches 20 run function asset:mob/0327.eclael/tick/app.1_11_1.select_skill_latter_hard_former_move
# 通常攻撃・2回
    execute if score @s 93.ActionCount matches 21..22 run function asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
