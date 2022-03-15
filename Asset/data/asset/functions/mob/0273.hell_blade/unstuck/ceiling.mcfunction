#> asset:mob/0273.hell_blade/unstuck/ceiling
#
#
#
# @within function asset:mob/0273.hell_blade/unstuck/

# ブロックが無かったら落下タグをつけてOnGroundを0bに
    execute if block ~ ~1 ~ #lib:no_collision run tag @s add 7L.Fall
    execute if block ~ ~1 ~ #lib:no_collision run data modify entity @s OnGround set value 0b
