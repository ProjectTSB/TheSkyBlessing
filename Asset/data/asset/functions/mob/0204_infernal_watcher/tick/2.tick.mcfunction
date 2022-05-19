#> asset:mob/0204_infernal_watcher/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0204_infernal_watcher/tick/1.trigger

# デーモンアイからコピーされたのをさらにコピー。幾何学って素敵！

# パーティクル
    particle dust 0.5 0 0 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]
    particle flame ~ ~1.68 ~ 0.25 0.25 0.25 0 1

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# 範囲内ならホーミングじみた移動、ただしダメージを受けていないなら
    execute facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.3 ~ ~

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={5O.AttackCT=1..}] 5O.AttackCT 1

# クールタイム中じゃないなら接触時に攻撃
    execute unless score @s 5O.AttackCT matches 1.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!creative,gamemode=!spectator,dx=0] run function asset:mob/0204_infernal_watcher/tick/event/attack

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45