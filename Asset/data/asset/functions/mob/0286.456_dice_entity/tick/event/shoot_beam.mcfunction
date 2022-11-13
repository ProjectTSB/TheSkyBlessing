#> asset:mob/0286.456_dice_entity/tick/event/shoot_beam
#
#
#
# @within function asset:mob/0286.456_dice_entity/tick/2.tick

# 演出
    playsound minecraft:block.note_block.xylophone neutral @a ~ ~ ~ 1.5 1.5
    particle crit ~ ~ ~ 0 0 0 0.5 10

# 再帰スタート
    function asset:mob/0286.456_dice_entity/tick/event/beam_recursion
    tag @s remove Landing

# カウント加算
    scoreboard players add @s CU.MoveCount 1
