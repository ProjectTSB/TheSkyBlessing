#> asset:mob/0327.eclael/tick/app.1_3.select_skill_latter
#
# 使用するスキルを決定する・後半戦
#
# @within function asset:mob/0327.eclael/tick/app.1_1.select_skill

# ノーマル
    execute if predicate api:global_vars/difficulty/max/normal run function asset:mob/0327.eclael/tick/app.1_6.select_skill_latter_normal
# ハード・前半
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0327.eclael/tick/app.1_11.select_skill_latter_hard_former
# ハード・後半
