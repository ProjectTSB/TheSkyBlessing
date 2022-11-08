#> asset:mob/0022.red_knight/death/explosion
#
#
#
# @within function asset:mob/0022.red_knight/death/death_animation

# パーティクル
    particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 1 force @a[distance=..30]
    particle minecraft:large_smoke ~ ~1 ~ 0.1 0.1 0.1 0.2 10

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.item.break hostile @a ~ ~ ~ 1 0.6

# スコアリセット
    scoreboard players reset @s M.DeathExplosion