#> asset:mob/0282.call_fulstuka/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0282.call_fulstuka/tick/1.trigger

# スコアを増やす
    scoreboard players add @s 7U.Tick 1
    scoreboard players add @s 7U.LifeTime 1

# プレイヤーと離れ過ぎたら誰でもいいからプレイヤーにつきまとう
    execute if score @s 7U.Tick matches -5 unless entity @p[distance=..9] at @p run function asset:mob/0282.call_fulstuka/tick/spreadteleport

# 一定時間で帰る
    execute if score @s 7U.Tick matches 0 if score @s 7U.LifeTime matches 600.. run function asset:mob/0282.call_fulstuka/tick/return

# 敵が周囲にいないのに時間が着てしまった場合。スコアを戻す
    execute if score @s 7U.Tick matches 0 unless entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20] run scoreboard players set @s 7U.Tick -10

# 敵が周囲にいたらスキル選択
    execute if score @s 7U.Tick matches 0 run function asset:mob/0282.call_fulstuka/tick/3.skill_select

# 選択したスキル発動
    execute if score @s 7U.Tick matches 0.. run function asset:mob/0282.call_fulstuka/tick/4.skill_active