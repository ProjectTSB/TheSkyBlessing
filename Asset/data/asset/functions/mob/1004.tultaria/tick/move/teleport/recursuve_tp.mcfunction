#> asset:mob/1004.tultaria/tick/move/teleport/recursuve_tp
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/move/teleport/move_to_marker
#   asset:mob/1004.tultaria/tick/move/teleport/recursuve_tp

# 前進
    tp @s ^ ^ ^0.1 ~ ~

# パーティクル
    execute at @s positioned ~ ~-0.2 ~ run particle soul_fire_flame ^ ^ ^-2 0 0 0 0 0 force @a[distance=..30]

# スコア減算
    scoreboard players remove @s RW.MoveTimesPerTick 1

# 再帰
    execute if entity @s[scores={RW.MoveTimesPerTick=1..}] at @s run function asset:mob/1004.tultaria/tick/move/teleport/recursuve_tp