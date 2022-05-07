#> asset:mob/0220.vena_cana/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0220.vena_cana/hurt/1.trigger

# 演出
    playsound minecraft:block.conduit.ambient hostile @a ~ ~ ~ 0.7 0.8 0
    particle dust 0.149 0.682 0.741 1 ~ ~1.2 ~ 2 0.4 2 0 150 normal @a

# バフ消し
    effect clear @a[gamemode=!spectator,distance=..5] speed
    effect clear @a[gamemode=!spectator,distance=..5] jump_boost
    effect clear @a[gamemode=!spectator,distance=..5] strength
    effect clear @a[gamemode=!spectator,distance=..5] haste
    effect clear @a[gamemode=!spectator,distance=..5] saturation
    effect clear @a[gamemode=!spectator,distance=..5] regeneration