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

# 着弾Tagを付与を付与
    execute positioned ~-0.5 ~ ~-0.5 if entity @a[tag=!PlayerShouldInvulnerable,dx=0] run tag @a[tag=!PlayerShouldInvulnerable,dx=0] add LandingTarget

# 再帰
    execute if entity @s[distance=..30] positioned ^ ^ ^1 if block ^ ^ ^ #lib:no_collision run function asset:mob/0185.tutankhamen/tick/burn_laser/05.shoot_recursive