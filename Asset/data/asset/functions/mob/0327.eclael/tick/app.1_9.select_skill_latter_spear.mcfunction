#> asset:mob/0327.eclael/tick/app.1_9.select_skill_latter_spear
#
# 使用するスキルを決定する・後半戦
#
# @within function asset:mob/0327.eclael/tick/**

# ノーマルの場合は通常の突きを使用
    tag @s add 93.Skill.Latter.Spear

# ハードの場合，移動突きをランダムで使用
    execute if predicate lib:random_pass_per/50 run tag @s add 93.Temp.MoveToLeft
