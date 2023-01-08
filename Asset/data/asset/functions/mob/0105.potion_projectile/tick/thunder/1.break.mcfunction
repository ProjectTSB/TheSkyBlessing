#> asset:mob/0105.potion_projectile/tick/thunder/1.break
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/4.element_branch

# 演出
    particle dust 1 1 0 1.5 ~ ~1.2 ~ 1 0.4 1 0 60 normal @a
    particle firework ~ ~1.2 ~ 1 0.4 1 0.1 40 normal @a
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.8 2 0
    playsound entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.8 1.5 0

    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 300
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0

# ダメージとMP減少
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..3] run function asset:mob/0105.potion_projectile/tick/thunder/2.thunder_damage

# キル
    kill @s
