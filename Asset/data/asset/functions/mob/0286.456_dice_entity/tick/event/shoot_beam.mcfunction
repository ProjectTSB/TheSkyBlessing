#> asset:mob/0286.456_dice_entity/tick/event/shoot_beam
#
#
#
# @within function asset:mob/0286.456_dice_entity/tick/2.tick

# 演出


# 再帰スタート
    function asset:mob/0286.456_dice_entity/tick/event/beam_recursion
    tag @s remove Landing

# カウント加算
    scoreboard players add @s CU.MoveCount 1
