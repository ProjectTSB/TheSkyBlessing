#> asset:sacred_treasure/0651.prominence_armor/8.burning_buff
#
#
#
# @within function asset:sacred_treasure/0651.prominence_armor/7.player_tick

# 演出
    particle flame ~ ~1.2 ~ 2 0.4 2 0 1 normal @a

# スコア減少
    execute unless predicate lib:is_burnning run scoreboard players remove @s I3.BurnTick 1

# リセット
    execute if score @s I3.BurnTick matches ..0 run scoreboard players reset @s I3.BurnTick