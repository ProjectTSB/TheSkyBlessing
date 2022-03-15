#> asset:mob/0273.hell_blade/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0273.hell_blade/tick/1.trigger

# Init処理
    execute as @s[tag=7L.Init] run function asset:mob/0273.hell_blade/init

# 移動
    execute as @s[tag=!7L.Fall] run function asset:mob/0273.hell_blade/move/

# 落ちるかどうかチェック
    execute if score @s 7L.Timer matches 2 as @s[tag=!7L.Fall] align xyz positioned ~.5 ~.5 ~.5 run function asset:mob/0273.hell_blade/unstuck/

# 横にプレイヤーがいるかチェック
    execute if score @s 7L.Timer matches 1 if score @s 7L.RotateTimer matches 1.. run scoreboard players remove @s 7L.RotateTimer 1
    execute if score @s 7L.RotateTimer matches 0 align xyz run function asset:mob/0273.hell_blade/rotate/

# 落下タグがついているなら
    execute as @s[tag=7L.Fall] run function asset:mob/0273.hell_blade/fall
