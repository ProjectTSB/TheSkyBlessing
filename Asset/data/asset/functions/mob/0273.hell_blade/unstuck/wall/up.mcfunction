#> asset:mob/0273.hell_blade/unstuck/wall/up
#
#
#
# @within function asset:mob/0273.hell_blade/unstuck/

# ブロックが無かったら落下タグをつけてOnGroundを0bに
    execute if block ^ ^ ^1 #asset:mob/0273.hell_blade/throughable run tag @s add 7L.Fall
    execute if block ^ ^ ^1 #asset:mob/0273.hell_blade/throughable run data modify entity @s OnGround set value 0b

# スライムブロックとハチミツブロックの時は滑って落ちる
    execute if block ^ ^ ^1 slime_block at @s run tp @s ^ ^ ^-.125
    execute if block ^ ^ ^1 slime_block run tag @s add 7L.Fall
    execute if block ^ ^ ^1 slime_block run data modify entity @s OnGround set value 0b

    execute if block ^ ^ ^1 honey_block at @s run tp @s ^ ^ ^-.125
    execute if block ^ ^ ^1 honey_block run tag @s add 7L.Fall
    execute if block ^ ^ ^1 honey_block run data modify entity @s OnGround set value 0b
