#> asset:mob/1015.divine_sword_purple/tick/4.unlanded_move
#
#
#
# @within function asset:mob/1015.divine_sword_purple/tick/3.unlanded

# 地面がいい感じのとこにあったら刺さる
    execute unless block ~ ~0 ~ #lib:no_collision run function asset:mob/1015.divine_sword_purple/tick/5.landed

# 落下
    tp @s ~ ~-0.5 ~