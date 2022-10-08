#> asset:mob/1019.bigshot/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1019.bigshot/tick/1.trigger

# スコア加算
    scoreboard players add @s SB.Tick 1

# 前進
    function asset:mob/1019.bigshot/tick/3.move

# プレイヤーの衝突判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run function asset:mob/1019.bigshot/tick/5.hit

# 時間で消える
    execute if score @s SB.Tick matches 40.. run kill @s