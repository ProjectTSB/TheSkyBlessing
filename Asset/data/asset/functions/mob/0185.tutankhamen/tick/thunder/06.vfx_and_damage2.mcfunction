#> asset:mob/0185.tutankhamen/tick/thunder/06.vfx_and_damage2
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/thunder/05.vfx_and_damage1

# 演出
    particle dust 0.38 0 0.6 1 ~ ~3 ~ 0.7 3 0.7 0 300
    particle dust 0.404 0.443 1 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2 0
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0 0

# ダメージとMP減少
    execute if entity @a[gamemode=!spectator,distance=..2] run function asset:mob/0185.tutankhamen/tick/thunder/07.damage

# 自害
    kill @s