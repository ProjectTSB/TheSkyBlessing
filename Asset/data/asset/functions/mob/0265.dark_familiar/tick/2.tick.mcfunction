#> asset:mob/0265.dark_familiar/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0265.dark_familiar/tick/1.trigger

# パーティクル
    execute anchored eyes positioned ^ ^ ^-0.3 run particle dust 0.5 0 0.6 0.5 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]
    execute anchored eyes positioned ^ ^ ^-0.3 run particle dust 0.5 0.3 0.6 0.7 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..40]

# 範囲内ならホーミングじみた移動
    execute facing entity @e[type=zombie,scores={MobID=264},distance=..30] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-2000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# 近くにサモナーがいないのであれば、プレイヤーに突っ込んでくる
    execute unless entity @e[type=zombie,scores={MobID=264},distance=..30] facing entity @p[distance=..30] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-2000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# 接地で上を向く
    execute positioned ~ ~1.68 ~ unless block ~ ~-1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute positioned ~ ~1.68 ~ unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# カベにぶつかった際の処理
    execute positioned ~ ~1.68 ~ unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute positioned ~ ~1.68 ~ unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45

# 世界に存在しすぎた場合、消滅する
    scoreboard players remove @s 7D.LifeTime 1
    execute if score @s 7D.LifeTime matches ..0 run function asset:mob/0265.dark_familiar/tick/event/suicide

# 攻撃
    scoreboard players add @s 7D.ShotCool 1
    execute if score @s 7D.ShotCool matches 40.. run function asset:mob/0265.dark_familiar/tick/event/shoot