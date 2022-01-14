#> asset:mob/0185.tutankhamen/tick/burn_laser/05.shoot_recursive
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/burn_laser/04.shoot
#   asset:mob/0185.tutankhamen/tick/burn_laser/05.shoot_recursive

# 演出
    particle lava ~ ~ ~ 0 0 0 0 1 normal @a
    particle lava ^ ^ ^0.25 0 0 0 0 1 normal @a
    particle lava ^ ^ ^0.5 0 0 0 0 1 normal @a
    particle lava ^ ^ ^0.75 0 0 0 0 1 normal @a
    playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 0.04 0

# ダメージ
    execute positioned ~-0.5 ~ ~-0.5 if entity @a[gamemode=!creative,gamemode=!spectator,dx=0] run function asset:mob/0185.tutankhamen/tick/burn_laser/06.damage

# 再帰
    execute positioned ~-0.5 ~ ~-0.5 if entity @s[distance=..30] unless entity @a[gamemode=!creative,gamemode=!spectator,dx=0] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^1 run function asset:mob/0185.tutankhamen/tick/burn_laser/05.shoot_recursive