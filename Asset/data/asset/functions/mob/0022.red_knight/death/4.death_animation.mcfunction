#> asset:mob/0022.red_knight/death/4.death_animation
#
#
#
# @within function asset:mob/0022.red_knight/death/3.death_tick

# スコア加算
    scoreboard players add @s M.Tick 1
    scoreboard players add @s M.DeathExplosion 1

# パーティクル
    particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[distance=..40]

# 爆発(最初のほう)
    execute if entity @s[scores={M.Tick=15..60,M.DeathExplosion=5..}] run function asset:mob/0022.red_knight/death/explosion

# シメの大爆発
    execute if score @s M.Tick matches 90.. run function asset:mob/0022.red_knight/death/explosion_finish