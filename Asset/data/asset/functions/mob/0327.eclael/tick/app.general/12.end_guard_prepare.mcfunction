#> asset:mob/0327.eclael/tick/app.general/12.end_guard_prepare
#
# ガード待機開始
#
# @within function asset:mob/0327.eclael/tick/**

# 弱い耐性付与
    effect clear @s resistance
    effect give @s resistance infinite 1 true

# ガード処理用タグ消去
    tag @s remove 93.Temp.PrepareGuard
    tag @s remove 93.Temp.Guard
