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
    playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 0.04 0

# ダメージ
    execute positioned ^-0.75 ^-0.75 ^-0.75 if entity @a[gamemode=!creative,gamemode=!spectator,dx=1.5,dy=1.5,dz=1.5] run function asset:mob/0185.tutankhamen/tick/burn_laser/06.damage

# 再帰
    execute if entity @s[distance=..30] positioned ^-0.75 ^-0.75 ^-0.75 unless entity @a[gamemode=!creative,gamemode=!spectator,dx=1.5,dy=1.5,dz=1.5] if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^1 run function asset:mob/0185.tutankhamen/tick/burn_laser/05.shoot_recursive