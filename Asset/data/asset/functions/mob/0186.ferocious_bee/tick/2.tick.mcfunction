#> asset:mob/0186.ferocious_bee/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0186.ferocious_bee/tick/1.trigger

# スコア関連
    scoreboard players add @s 56.MoveTime 1
    scoreboard players remove @s[scores={56.HurtTime=0..}] 56.HurtTime 1

# スコアによって速度が変わる、突進のときはダメージを受けても止まらない。
    execute if entity @s[scores={56.MoveTime=..179}] unless score @s 56.HurtTime matches 0.. facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~
    execute if entity @s[scores={56.MoveTime=180..}] facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^1 ~ ~

# スコアリセット
    scoreboard players reset @s[scores={56.MoveTime=200..}] 56.MoveTime

# のけぞりから復帰
    data modify entity @s[scores={56.HurtTime=..0}] NoAI set value 1b

# 演出
    execute if score @s 56.MoveTime matches 180 run playsound entity.bee.hurt hostile @a ~ ~ ~ 1 1
    execute if entity @s[scores={56.MoveTime=180..200}] run particle cloud ~ ~1.25 ~ 0.25 0.25 0.25 0 0

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={56.AttackCT=1..}] 56.AttackCT 1

# クールタイム中じゃないなら突進時に攻撃
    execute if entity @s[scores={56.MoveTime=180..}] unless score @s 56.AttackCT matches 1.. positioned ~-0.5 ~0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0186.ferocious_bee/tick/3.damage

# カベにぶつかった際の処理はない。壁は貫通するもの

# デスポーン処理
    execute unless entity @p[distance=..40] run function asset:mob/0186.ferocious_bee/tick/remove