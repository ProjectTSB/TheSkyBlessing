#> asset:mob/0210.aurora_eye/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0210.aurora_eye/tick/1.trigger

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1 0 0.235 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 1 normal

# 接地で上を向く
    execute unless block ~ ~0.4 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~2.5 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# 範囲内ならホーミングじみた移動、ただしダメージを受けていないなら
    execute facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={5U.AttackCT=1..}] 5U.AttackCT 1

# クールタイム中じゃないなら接触時に攻撃
    execute unless score @s 5U.AttackCT matches 1.. anchored eyes positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,dx=0] as @p[tag=!PlayerShouldInvulnerable,dx=0] at @s run function asset:mob/0210.aurora_eye/tick/3.attack

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.3 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45

# 遠距離攻撃
    execute unless entity @a[gamemode=!spectator,distance=..8] run scoreboard players add @s 5U.Shoot 1
    execute if entity @s[scores={5U.Shoot=80..}] run function asset:mob/0210.aurora_eye/tick/4.summon_bullet