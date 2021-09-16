#> asset:sacred_treasure/0725.fleur_armor/7.player_tick
#
#
#
# @within function asset:sacred_treasure/0725.fleur_armor/6.schedule_loop

# 自身に再生1
    effect give @s regeneration 1 0 true

# 10秒ごとに周囲の味方を回復
    scoreboard players add @s K5.Tick 1
    execute if score @s K5.Tick matches 200.. run function asset:sacred_treasure/0725.fleur_armor/8.heal

# 演出
    particle dust 100000000 0.75 1000000000 1 ~ ~1.2 ~ 1 0.4 1 0 1 normal @a
    particle dust 0.5 100000000 1000000000 1 ~ ~1.2 ~ 1 0.4 1 0 1 normal @a