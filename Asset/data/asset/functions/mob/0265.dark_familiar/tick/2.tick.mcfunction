#> asset:mob/0265.dark_familiar/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0265.dark_familiar/tick/1.trigger

# 召喚されたときの処理
    execute unless entity @s[tag=7D.Init] run function asset:mob/0265.dark_familiar/tick/event/init

# パーティクル
    execute anchored eyes run particle dust 0.5 0 0.6 0.5 ^ ^ ^ 0.1 0.1 0.1 0 4 force @a[distance=..40]

# 範囲内ならホーミングじみた移動、ただしダメージを受けていないなら
    execute at @s anchored eyes as @e[type=area_effect_cloud,tag=7D.Rotater,sort=nearest,limit=1] run function asset:mob/0265.dark_familiar/tick/rotater/tick

# 速さ
    data modify storage lib: Argument.VectorMagnitude set value 0.15

# 飛ぶのに使う
    execute if data entity @s {HurtTime:0s} at @s anchored eyes rotated as @e[type=area_effect_cloud,tag=7D.Rotater,sort=nearest,limit=1] run function lib:motion/
    data remove storage lib: Argument
# 向き
    data modify entity @s Rotation set from storage asset:temp Rotation
    data remove storage asset:temp Rotation

# 接地で上を向く
    execute if data entity @s {OnGround:1b} positioned ~ ~1.5 ~ as @e[type=area_effect_cloud,tag=7D.Rotater,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~ ~-35

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={7D.Move=1..}] 7D.Move 1

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision as @e[type=area_effect_cloud,tag=7D.Rotater,sort=nearest,limit=1] run tp @s ~ ~ ~ ~45 ~-45

# 世界に存在しすぎた場合、消滅する
    scoreboard players remove @s 7D.LifeTime 1
    execute if score @s 7D.LifeTime matches ..0 run function asset:mob/0265.dark_familiar/tick/event/suicide
