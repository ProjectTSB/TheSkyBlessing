#> asset:mob/0320.haruclaire_shot/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0320.haruclaire_shot/tick/1.trigger

# 再帰カウントが0なら弾速からセット
    scoreboard players operation @s 8W.CurrentSpeed = @s 8W.Speed

# 移動
    function asset:mob/0320.haruclaire_shot/tick/move
