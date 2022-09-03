#> asset:mob/1004.tultaria/tick/move/teleport/recursuve_tp
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/move/teleport/move_to_marker
#   asset:mob/1004.tultaria/tick/move/teleport/recursuve_tp



# パーティクル
    execute positioned ~ ~-0.2 ~ run particle soul_fire_flame ^ ^ ^-2 0 0 0 0 0 force @a[distance=..30]

# スコア減算
    scoreboard players remove @s RW.MoveTimesPerTick 1

# 前進
    execute if entity @s[scores={RW.MoveTimesPerTick=0}] run function asset:mob/1004.tultaria/tick/move/tereport

# 再帰
    execute if entity @s[scores={RW.MoveTimesPerTick=1..}] positioned ^ ^ ^0.1 run function asset:mob/1004.tultaria/tick/move/teleport/recursuve_tp