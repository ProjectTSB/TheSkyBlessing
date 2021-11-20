#> asset:mob/0185.tutankhamen/tick/warp_attack/2.warp
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/warp_attack/1.main

# ワープ準備
    tag @s remove 55.WarpAtack
    tag @s add 55.MagicSquare
    scoreboard players set @s 55.Tick 100

# ワープ
    tp @s @a[gamemode=!spectator,distance=..32,sort=random,limit=1]

# 演出
    particle witch ~ ~1.2 ~ 0.4 0.5 0.4 1 200 normal @a
    playsound entity.enderman.teleport master @a ~ ~ ~ 1 1 0