#> asset:mob/0273.hell_blade/unstuck/ceiling
#
#
#
# @within function asset:mob/0273.hell_blade/unstuck/

# ブロックが無かったら落下タグをつけてOnGroundを0bに
    execute if block ~ ~1 ~ #asset:mob/0273.hell_blade/throughable run tag @s add 7L.Fall
    execute if block ~ ~1 ~ #asset:mob/0273.hell_blade/throughable run data modify entity @s OnGround set value 0b

# 滑って落ちる
    execute if block ~ ~1 ~ #asset:mob/0273.hell_blade/slip run tag @s add 7L.Fall
    execute if block ~ ~1 ~ #asset:mob/0273.hell_blade/slip run data modify entity @s OnGround set value 0b

# 下にプレイヤーがいたら落下
    execute at @s align xyz positioned ~ ~-6 ~ if entity @a[dy=6] run function asset:mob/0273.hell_blade/unstuck/drop
