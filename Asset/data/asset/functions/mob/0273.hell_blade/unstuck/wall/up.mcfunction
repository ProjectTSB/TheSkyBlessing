#> asset:mob/0273.hell_blade/unstuck/wall/up
#
#
#
# @within function asset:mob/0273.hell_blade/unstuck/

# ブロックが無かったら落下タグをつけてOnGroundを0bに
    execute if block ^ ^ ^1 #asset:mob/0273.hell_blade/throughable run tag @s add 7L.Fall
    execute if block ^ ^ ^1 #asset:mob/0273.hell_blade/throughable run data modify entity @s OnGround set value 0b

# 滑って落ちる
    execute if block ^ ^ ^1 #asset:mob/0273.hell_blade/slip at @s run tp @s ^ ^ ^-.125
    execute if block ^ ^ ^1 #asset:mob/0273.hell_blade/slip run tag @s add 7L.Fall
    execute if block ^ ^ ^1 #asset:mob/0273.hell_blade/slip run data modify entity @s OnGround set value 0b
