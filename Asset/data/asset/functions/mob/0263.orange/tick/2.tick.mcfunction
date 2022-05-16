#> asset:mob/0263.orange/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0263.orange/tick/1.trigger

#> Private
# @private
    #declare score_holder $Temp

# 演出
    particle dust 1 0.5 0 1 ~ ~ ~ 0.05 0.05 0.05 0 1 normal @a

# ここからは足元がブロックの場合のみ動く
    execute unless block ~ ~-0.3 ~ #lib:no_collision run function asset:mob/0263.orange/tick/3.on_block