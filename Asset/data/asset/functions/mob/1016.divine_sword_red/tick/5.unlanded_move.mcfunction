#> asset:mob/1016.divine_sword_red/tick/5.unlanded_move
#
#
#
# @within function asset:mob/1016.divine_sword_red/tick/4.unlanded

# 落下
    tp @s ~ ~-0.5 ~

# 地面がいい感じのとこにあったら刺さる
    execute unless block ~ ~0.2 ~ #lib:no_collision run function asset:mob/1016.divine_sword_red/tick/6.landed
