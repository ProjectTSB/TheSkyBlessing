#> asset:mob/0286.456_dice_entity/tick/event/death
#
#
#
# @within function asset:mob/0286.456_dice_entity/tick/2.tick

# 消滅
    playsound minecraft:entity.chicken.egg neutral @a ~ ~ ~ 1.5 1.2
    particle minecraft:explosion ~ ~1.7 ~ 0 0 0 0 0
    kill @s