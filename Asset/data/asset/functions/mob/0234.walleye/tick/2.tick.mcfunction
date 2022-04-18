#> asset:mob/0234.walleye/tick/2.tick
#
# Mobのtick時の処理
# phase=0: 索敵
# phase=1: 移動
# phase=2: 起爆
#
# @within function asset:mob/0234.walleye/tick/1.trigger



# 探知フェーズの場合の処理
    execute if score @s 6i.Phase matches 0 at @s run function asset:mob/0234.walleye/tick/2.1.search

# 移動フェーズの場合の処理
    execute if score @s 6i.Phase matches 1 run function asset:mob/0234.walleye/tick/2.2.move

# 爆発フェーズの場合の処理
    execute if score @s 6i.Phase matches 2 run function asset:mob/0234.walleye/tick/2.3.explode

