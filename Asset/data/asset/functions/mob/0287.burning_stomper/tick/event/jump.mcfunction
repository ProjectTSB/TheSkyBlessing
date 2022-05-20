#> asset:mob/0287.burning_stomper/tick/event/jump
#
#
#
# @within function asset:mob/0287.burning_stomper/tick/2.tick

# 演出
    particle minecraft:poof ~ ~0.2 ~ 0.25 0 0.25 0 20
    playsound minecraft:entity.iron_golem.attack hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1.5 1
    
# こっちを向く
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# こっちに対してMotionで飛ぶ
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute facing entity @p feet run function lib:motion/
    data remove storage lib: Argument

# 最後に上方向に飛ぶ
    data modify entity @s Motion[1] set value 1.0d