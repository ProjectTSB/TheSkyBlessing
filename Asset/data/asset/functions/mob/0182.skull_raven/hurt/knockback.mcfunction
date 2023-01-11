#> asset:mob/0182.skull_raven/hurt/knockback
#
#
#
# @within function asset:mob/0182.skull_raven/hurt/2.hurt

# 演出
    particle minecraft:cloud ~ ~1 ~ 0 0 0 0.4 20
    playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 0.4 0

# 浮遊を自分に付与
    effect give @s levitation 1 8 true

# プレイヤーから離れる
    data modify storage lib: Argument.VectorMagnitude set value 1.5
    execute facing entity @p[tag=Attacker] eyes rotated ~180 -10 run function lib:motion/

# リセット
    data remove storage lib: Argument