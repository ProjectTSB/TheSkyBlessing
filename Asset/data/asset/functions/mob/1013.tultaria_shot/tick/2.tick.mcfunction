#> asset:mob/1013.tultaria_shot/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/1013.tultaria_shot/tick/1.trigger

# 移動
    function asset:mob/1013.tultaria_shot/tick/3.move

# プレイヤーの衝突判定
    execute at @s positioned ~-0.5 ~0.0 ~-0.5 if entity @p[dx=0] run function asset:mob/1013.tultaria_shot/tick/5.hit

# Tick加算
    scoreboard players add @s S5.Tick 1

# しばらくたつと消える
    execute if score @s S5.Tick matches 100.. run kill @s
