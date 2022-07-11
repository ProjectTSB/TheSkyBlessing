#> asset:mob/0273.hell_blade/unstuck/wall/down
#
#
#
# @within function asset:mob/0273.hell_blade/unstuck/

# ブロックが無かったら落下タグをつけてOnGroundを0bに
    execute if block ^ ^ ^-1 #asset:mob/0273.hell_blade/throughable run tag @s add 7L.Fall
    execute if block ^ ^ ^-1 #asset:mob/0273.hell_blade/throughable run data modify entity @s OnGround set value 0b
