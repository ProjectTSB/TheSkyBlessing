#> asset:mob/0188.fireball/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0188.fireball/tick/1.trigger

# パーティクル
    particle smoke ~ ~ ~ 0.1 0.1 0.1 0.001 3

# 再帰カウントが0なら弾速からセット
    scoreboard players operation @s 58.Recursive = @s 58.Speed

# 移動
    execute if entity @s[tag=58.Start] run function asset:mob/0188.fireball/tick/move

# Init
    execute if entity @s[tag=58.Init] run function asset:mob/0188.fireball/tick/init