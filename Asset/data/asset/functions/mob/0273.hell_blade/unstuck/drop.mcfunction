#> asset:mob/0273.hell_blade/unstuck/drop
#
#
#
# @within function asset:mob/0273.hell_blade/unstuck/ceiling

# 落下タグをつけてOnGroundを0bに
    tag @s add 7L.Fall
    data modify entity @s OnGround set value 0b

# SFX
    playsound block.note_block.bit hostile @a ~ ~ ~ 1 2
