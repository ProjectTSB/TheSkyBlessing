#> asset:mob/0021.demon_eye/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0021.demon_eye/tick/1.trigger

# 万が一剥がされでもしたらいやなのでエフェクト付与
    effect give @s slow_falling 2 0 true

# パーティクル
    particle dust 0.5 0 0 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# 範囲内ならホーミングじみた移動、ただしダメージを受けていないなら
    execute at @s anchored eyes as @e[type=area_effect_cloud,tag=21.Rotater,sort=nearest,limit=1] run function asset:mob/0021.demon_eye/tick/rotater_tick

# 速さ
    scoreboard players set $VectorMagnitude Lib 25

# 飛ぶのに使う
    execute if entity @s[nbt={HurtTime:0s}] at @s anchored eyes rotated as @e[type=area_effect_cloud,tag=21.Rotater,sort=nearest,limit=1] run function lib:motion/

# 向き
    data modify entity @s Rotation set from storage asset:temp Rotation
    data remove storage asset:temp Rotation

# 接地で上を向く
    execute if data entity @s {OnGround:1b} positioned ~ ~1.5 ~ as @e[type=area_effect_cloud,tag=21.Rotater,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~ ~-35

# 安定してダメージを出すために
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[gamemode=!creative,gamemode=!spectator,dx=0] run function asset:mob/0021.demon_eye/tick/attack

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision as @e[type=area_effect_cloud,tag=21.Rotater,sort=nearest,limit=1] run tp @s ~ ~ ~ ~45 ~-45