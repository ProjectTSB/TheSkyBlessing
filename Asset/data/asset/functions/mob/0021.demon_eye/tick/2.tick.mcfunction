#> asset:mob/0021.demon_eye/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0021.demon_eye/tick/1.trigger

# パーティクル
    particle dust 0.5 0 0 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# 範囲内ならホーミングじみた移動、ただしダメージを受けていないなら
    execute at @s anchored eyes as @e[type=area_effect_cloud,tag=21.Rotater,sort=nearest,limit=1] run function asset:mob/0021.demon_eye/tick/rotater_tick

# 速さ
    data modify storage lib: Argument.VectorMagnitude set value 0.15

# 飛ぶのに使う
    execute if data entity @s {HurtTime:0s} at @s anchored eyes rotated as @e[type=area_effect_cloud,tag=21.Rotater,sort=nearest,limit=1] run function lib:motion/
    data remove storage lib: Argument
# 向き
    data modify entity @s Rotation set from storage asset:temp Rotation
    data remove storage asset:temp Rotation

# 接地で上を向く
    execute if data entity @s {OnGround:1b} positioned ~ ~1.5 ~ as @e[type=area_effect_cloud,tag=21.Rotater,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~ ~-35

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={L.AttackCT=1..}] L.AttackCT 1

# クールタイム中じゃないなら接触時に攻撃
    execute unless score @s L.AttackCT matches 1.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0021.demon_eye/tick/event/attack

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision as @e[type=area_effect_cloud,tag=21.Rotater,sort=nearest,limit=1] run tp @s ~ ~ ~ ~45 ~-45

# 世界に存在しすぎた場合、消滅する
    scoreboard players remove @s L.LifeTime 1
    execute if score @s L.LifeTime matches ..0 run function asset:mob/0021.demon_eye/tick/event/suicide
