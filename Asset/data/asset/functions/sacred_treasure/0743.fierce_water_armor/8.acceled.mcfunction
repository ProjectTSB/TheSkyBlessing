#> asset:sacred_treasure/0743.fierce_water_armor/8.acceled
#
#
#
# @within function asset:sacred_treasure/0743.fierce_water_armor/7.player_tick

# バフ
    effect give @s speed 1 3 true

# 演出
    execute rotated ~ 0 positioned ^ ^ ^-0.3 run particle splash ~ ~0.4 ~ 0.2 0.05 0.2 0 20 normal @a
    playsound minecraft:entity.player.swim master @a ~ ~ ~ 0.1 1 0