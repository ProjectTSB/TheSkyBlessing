#> asset:mob/0206.skull_basher/tick/event/step
#
#
#
# @within function asset:mob/0206.skull_basher/tick/2.tick

# VFX
    playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1.5 1.2
    playsound minecraft:entity.skeleton.step hostile @a ~ ~ ~ 1.5 1.2
    execute if entity @s[tag=5Q.Melee] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.5 1

# 近くのやつを向く
    execute facing entity @p feet run tp @s @s

# 飛ぶのに使う
    # 前方
        execute if entity @s[tag=5Q.Ranged] run data modify storage lib: Argument.VectorMagnitude set value 0.7
    # 後方
        execute if entity @s[tag=5Q.Melee] run data modify storage lib: Argument.VectorMagnitude set value -0.7

# 飛ぶ
    execute rotated ~ ~0 run function lib:motion/

# 上への移動
    data modify entity @s Motion[1] set value 0.4

# リセット
    data remove storage lib: Argument
    scoreboard players reset @s 5Q.MoveTime