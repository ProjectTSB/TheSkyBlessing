#> asset:mob/0105.potion_projectile/tick/thunder/
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/6.element_branch

# 演出
    particle dust 1 1 0 1.5 ~ ~1.2 ~ 1 0.4 1 0 60 normal @a
    particle firework ~ ~1.2 ~ 1 0.4 1 0.1 40 normal @a
    playsound entity.firework_rocket.twinkle master @a ~ ~ ~ 0.8 2 0
    playsound entity.firework_rocket.twinkle master @a ~ ~ ~ 0.8 1.5 0

# ダメージとMP減少
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..3] run function asset:mob/0105.potion_projectile/tick/thunder/1.thunder_damage

# キル
    kill @s
