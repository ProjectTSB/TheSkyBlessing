#> asset:mob/0320.haruclaire_shot/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0320.haruclaire_shot/tick/1.trigger

# 途中で加速する
    execute if score @s 8W.Range matches 250 run scoreboard players set @s 8W.Speed 15
    execute if score @s 8W.Range matches 160 run scoreboard players set @s 8W.Speed 20

# 再帰カウントが0なら弾速からセット
    scoreboard players operation @s 8W.CurrentSpeed = @s 8W.Speed

# 移動
    function asset:mob/0320.haruclaire_shot/tick/move
