#> asset:sacred_treasure/0639.neptune_armor/5.player_tick
#
#
#
# @within function asset:sacred_treasure/0639.neptune_armor/4.schedule_loop

# バフ
    effect give @s conduit_power 2 0 true
    effect give @s dolphins_grace 2 0 true
    effect give @s speed 2 1 true
    effect give @s night_vision 20 1 true

# 演出
    particle rain ~ ~1.3 ~ 0.4 0.6 0.4 0 3 normal @a
    particle dust 0 0 0.659 1 ^ ^1.3 ^-0.6 0.3 0.3 0.3 0 2 normal @a