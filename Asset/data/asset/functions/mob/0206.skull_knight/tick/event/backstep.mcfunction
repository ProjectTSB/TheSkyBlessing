#> asset:mob/0206.skull_knight/tick/event/backstep
#
#
#
# @within function asset:mob/0206.skull_knight/tick/2.tick

# VFX
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 1.5 1.2
    playsound minecraft:entity.skeleton.step hostile @a ~ ~ ~ 1.5 1.2

# 近くのやつを向く
    execute facing entity @p feet run tp @s @s

# 速さ
    data modify storage lib: Argument.VectorMagnitude set value 0.7

# 飛ぶのに使う
    execute rotated ~ ~0 run function lib:motion/

# 上への移動
    data modify entity @s Motion[1] set value 0.4

# リセット
    scoreboard players reset @s 5Q.MoveTime
    data remove storage lib: Argument