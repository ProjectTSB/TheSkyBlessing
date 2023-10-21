#> asset:mob/0327.eclael/tick/app.general/11.start_guard_prepare
#
# ガード待機開始
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/**

# 耐性付与
    effect clear @s resistance
    effect give @s resistance infinite 8 true

# タグ付与
    tag @s add 93.Temp.PrepareGuard
