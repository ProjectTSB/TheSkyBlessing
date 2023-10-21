#> asset:mob/0327.eclael/tick/app.1_7.select_skill_latter_attack_switch
#
# 使用するスキルを決定する・後半戦
#
# @within function asset:mob/0327.eclael/tick/**

# ある程度近くにプレイヤーがいる場合，近距離用
    execute if entity @a[distance=..12] run function asset:mob/0327.eclael/tick/app.1_4.select_skill_latter_attack_near
# プレイヤーがいない場合，遠距離用
    execute unless entity @a[distance=..12] run function asset:mob/0327.eclael/tick/app.1_5.select_skill_latter_attack_far
