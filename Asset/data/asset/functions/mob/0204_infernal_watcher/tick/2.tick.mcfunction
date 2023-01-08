#> asset:mob/0204_infernal_watcher/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0204_infernal_watcher/tick/1.trigger

# デーモンアイからコピーされたのをさらにコピー。幾何学って素敵！


# スコア関連
    scoreboard players add @s 5O.MoveTime 1
    scoreboard players remove @s[scores={5O.HurtTime=0..}] 5O.HurtTime 1

# スコアによって速度が変わる、最高速のときはダメージを受けても止まらない
    execute if entity @s[scores={5O.MoveTime=..39}] unless score @s 5O.HurtTime matches 0.. facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~
    execute if entity @s[scores={5O.MoveTime=40..}] facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.5 ~ ~

# サウンド
    execute if entity @s[scores={5O.MoveTime=40}] run function asset:mob/0204_infernal_watcher/tick/event/start_frenzy
    execute if entity @s[scores={5O.MoveTime=100}] run function asset:mob/0204_infernal_watcher/tick/event/end_frenzy

# スコアリセット
    scoreboard players reset @s[scores={5O.MoveTime=100..}] 5O.MoveTime

# のけぞりから復帰
    data modify entity @s[scores={5O.HurtTime=..0}] NoAI set value 1b

# パーティクル
    particle dust 0.761 0.267 0 1 ~ ~1.5 ~ 0.25 0.25 0.25 0 1 force @a[distance=..40]
    particle dust 0.792 0 0 1 ~ ~1.5 ~ 0.25 0.25 0.25 0 1 force @a[distance=..40]
    execute if entity @s[scores={5O.MoveTime=60..100}] run particle flame ~ ~1.5 ~ 0.25 0.25 0.25 0 1

# 接地で上を向く
    execute positioned ~ ~1.68 ~ unless block ~ ~-1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute positioned ~ ~1.68 ~ unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={5O.AttackCT=1..}] 5O.AttackCT 1

# クールタイム中じゃないなら接触時に攻撃
    execute if entity @s[scores={5O.MoveTime=..59}] unless score @s 5O.AttackCT matches 1.. positioned ~-0.5 ~0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0204_infernal_watcher/tick/event/attack
    execute if entity @s[scores={5O.MoveTime=60..}] unless score @s 5O.AttackCT matches 1.. positioned ~-0.5 ~0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0204_infernal_watcher/tick/event/attack_strong

# カベにぶつかった際の処理
    execute positioned ~ ~1.68 ~ unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute positioned ~ ~1.68 ~ unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45

# 世界に存在しすぎた場合、消滅する
    scoreboard players remove @s 5O.LifeTime 1
    execute if score @s 5O.LifeTime matches ..0 run function asset:mob/0204_infernal_watcher/tick/event/suicide