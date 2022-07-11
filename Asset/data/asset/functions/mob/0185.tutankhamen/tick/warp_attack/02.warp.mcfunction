#> asset:mob/0185.tutankhamen/tick/warp_attack/02.warp
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/warp_attack/01.main

# ワープ準備
    tag @s remove 55.WarpAttack
    tag @s add 55.MagicSquare
    scoreboard players set @s 55.Tick 20

# ワープ
    tp @s @a[gamemode=!spectator,distance=..32,sort=random,limit=1]

# 演出
    particle witch ~ ~1.2 ~ 0.4 0.5 0.4 1 200 normal @a
    execute at @p[gamemode=!spectator] run particle witch ~ ~1.2 ~ 0.4 0.5 0.4 1 200 normal @a
    playsound entity.enderman.teleport hostile @a[distance=..32] ~ ~ ~ 1.3 1 1