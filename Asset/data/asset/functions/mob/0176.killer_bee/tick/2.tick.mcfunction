#> asset:mob/0176.killer_bee/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0176.killer_bee/tick/1.trigger

# スコア関連
    scoreboard players add @s 4W.MoveTime 1
    scoreboard players remove @s[scores={4W.HurtTime=0..}] 4W.HurtTime 1

# スコアによって速度が変わる、突進のときはダメージを受けても止まらない。
    execute if entity @s[scores={4W.MoveTime=..49}] unless score @s 4W.HurtTime matches 0.. facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.5 ~ ~
    execute if entity @s[scores={4W.MoveTime=50..}] facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-400 facing entity @s eyes positioned as @s run tp @s ^ ^ ^1 ~ ~

# スコアリセット
    scoreboard players reset @s[scores={4W.MoveTime=100..}] 4W.MoveTime

# のけぞりから復帰
    data modify entity @s[scores={4W.HurtTime=..0}] NoAI set value 1b

# 演出
    execute if score @s 4W.MoveTime matches 50 run playsound entity.bee.hurt hostile @a ~ ~ ~ 1 1
    execute if entity @s[scores={4W.MoveTime=50..100}] run particle cloud ~ ~1.25 ~ 0.25 0.25 0.25 0 0

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={4W.AttackCT=1..}] 4W.AttackCT 1

# クールタイム中じゃないなら突進時に攻撃
    execute if entity @s[scores={4W.MoveTime=50..}] unless score @s 4W.AttackCT matches 1.. positioned ~-0.5 ~0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0176.killer_bee/tick/3.damage

# カベにぶつかった際の処理はない。壁は貫通するもの

# デスポーン処理
    execute unless entity @p[distance=..40] run function asset:mob/0176.killer_bee/tick/remove