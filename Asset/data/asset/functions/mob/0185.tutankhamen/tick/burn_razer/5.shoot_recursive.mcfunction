#> asset:mob/0185.tutankhamen/tick/burn_razer/5.shoot_recursive
#
#
#
# @within function
#   asset:mob/0185.tutankhamen/tick/burn_razer/4.shoot
#   asset:mob/0185.tutankhamen/tick/burn_razer/5.shoot_recursive

# 演出
    particle lava ~ ~ ~ 0 0 0 0 1 normal @a
    playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 0.01 0

# ダメージ
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function asset:mob/0185.tutankhamen/tick/burn_razer/6.damage

# 再帰
    execute if entity @s[distance=..30] if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^0.25 run function asset:mob/0185.tutankhamen/tick/burn_razer/5.shoot_recursive