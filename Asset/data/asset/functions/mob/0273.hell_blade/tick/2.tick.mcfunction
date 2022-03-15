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
    execute as @s[tag=!7L.Fall] align xyz positioned ~.5 ~.5 ~.5 run function asset:mob/0273.hell_blade/unstuck/

# 落下タグがついているなら
    execute as @s[tag=7L.Fall] run function asset:mob/0273.hell_blade/fall
