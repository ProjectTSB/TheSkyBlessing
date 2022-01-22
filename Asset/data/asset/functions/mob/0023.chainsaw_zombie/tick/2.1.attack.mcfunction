#> asset:mob/0023.chainsaw_zombie/tick/2.1.attack
#
#
#
# @within function asset:mob/0023.chainsaw_zombie/tick/2.tick

# 演出
    playsound entity.generic.drink hostile @a ~ ~ ~ 0.8 0.3
    playsound block.soul_sand.place hostile @a ~ ~ ~ 1.0 0.8
# 突進する
    data modify storage lib: Argument.VectorMagnitude set value 2
    execute facing entity @p[gamemode=!spectator] feet rotated ~ ~-10 run function lib:motion/

# リセット
    data remove storage lib: Argument