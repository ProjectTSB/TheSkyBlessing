#> asset:mob/0327.eclael/tick/app.general/10.1.check_pursuit
#
# 汎用処理 追撃を行う
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/**

# ハードのみ，追撃が当たる範囲にプレイヤーがいそうな場合，追撃を開始
    execute if predicate api:global_vars/difficulty/min/hard positioned ^ ^ ^2 if entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/10.2.start_pursuit_animation

# 終了，一時タグ消去
    tag @s remove 93.Temp.AttackHit
