#> asset:mob/0327.eclael/tick/app.1_8.select_skill_latter_move_shot
#
# 使用するスキルを決定する・後半戦
#
# @within function asset:mob/0327.eclael/tick/**

# 移動射撃をランダムで使用
    execute if predicate lib:random_pass_per/50 run tag @s add 93.Skill.Latter.MoveShot
    execute if entity @s[tag=!93.Skill.Latter.MoveShot] run tag @s add 93.Skill.Latter.MoveShot.Single