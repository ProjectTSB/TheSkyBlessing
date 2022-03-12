#> asset:mob/0273.hell_blade/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0273.hell_blade/tick/1.trigger

# Init処理
    execute as @s[tag=7L.Init] run function asset:mob/0273.hell_blade/init

# 下にブロックが無かったら落下タグをつけてOnGroundを0bに
    execute if block ~ ~-1 ~ #lib:no_collision run tag @s add 7L.Fall
    execute if block ~ ~-1 ~ #lib:no_collision run data modify entity @s OnGround set value 0b

# 落下タグがついているなら
    execute as @s[tag=7L.Fall] run function asset:mob/0273.hell_blade/fall

