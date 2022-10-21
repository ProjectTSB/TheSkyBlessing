#> asset:mob/0022.red_knight/tick/move/teleport/recursive_tp
#
#
#
# @within function
#   asset:mob/0022.red_knight/tick/move/teleport/recursive_tp
#   asset:mob/0022.red_knight/tick/move/teleport/move_to_marker

# スコア減算
    scoreboard players remove @s M.MoveTimesPerTick 1

# 前進
    execute if entity @s[scores={M.MoveTimesPerTick=0}] run function asset:mob/0022.red_knight/tick/move/tp

# 再帰
    execute if entity @s[scores={M.MoveTimesPerTick=1..}] positioned ^ ^ ^1 run function asset:mob/0022.red_knight/tick/move/teleport/recursive_tp