#> asset:mob/0301.sinful_thoughts/tick/2.gun/4.ready
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/2.gun/1.gun

# 発砲
    execute rotated ~-90 0 positioned ^ ^ ^1.4 positioned ~ ~-0.4 ~ anchored eyes positioned ^ ^ ^ run function asset:mob/0301.sinful_thoughts/tick/2.gun/5.shot

# 演出
    playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 0
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.8 2

# リセット
    tag @s remove Landing