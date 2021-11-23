#> asset:mob/0188.fireball/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0188.fireball/tick/1.trigger

# パーティクル
    particle lava ~ ~ ~ 0.25 0.25 0.25 0.005 1


# 移動
    execute if entity @s[tag=0188.Start] run function asset:mob/0188.fireball/tick/move

# Init
    execute if entity @s[tag=0188.Init] run function asset:mob/0188.fireball/tick/init
