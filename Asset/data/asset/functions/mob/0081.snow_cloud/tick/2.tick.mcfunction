#> asset:mob/0081.snow_cloud/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0081.snow_cloud/tick/1.trigger

# プレイヤーが下にいる場合動くコマンド(スコア蓄積、雪が降るパーティクル)
    execute positioned ~-0.75 ~-6 ~-0.75 if entity @a[gamemode=!spectator,dx=1.5,dy=6,dz=1.5] run function asset:mob/0081.snow_cloud/tick/3.near_player

# パーティクル
    particle snowflake ~ ~ ~ 0.6 0.3 0.6 0 2 normal @a
    particle dust 1 1000000000 1000000000 2 ~ ~ ~ 0.6 0.3 0.6 0 2 normal @a

# 最も近いプレイヤーの上に移動
    execute facing entity @p[gamemode=!spectator] feet rotated ~ 0 if block ^ ^ ^0.2 #lib:no_collision run tp @s ^ ^ ^0.1
    execute if entity @a[gamemode=!spectator,distance=..4] if block ~ ~1 ~ #lib:no_collision run tp @s ~ ~1 ~

# プレイヤーの上に移動しすぎたら降下(下30ブロック以内にプレイヤーがいて、下6ブロック以内にプレイヤーがいない場合降下)
    execute positioned ~-1 ~-30 ~-1 if entity @a[gamemode=!spectator,dx=2,dy=30,dz=2] at @s positioned ~-1 ~-6 ~-1 unless entity @a[gamemode=!spectator,dx=2,dy=6,dz=2] at @s if block ~ ~-1 ~ #lib:no_collision run tp @s ~ ~-1 ~
# 近くのプレイヤーに水魔法ダメージ
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..3] run function asset:mob/0081.snow_cloud/tick/4.near_damage

# 一定周期の特殊能力(分岐functionに記載)
    execute if score @s 29.SnowTick matches 60.. run function asset:mob/0081.snow_cloud/tick/5.snowing

# 近くにプレイヤーがいない場合は奈落行き
    execute unless entity @a[gamemode=!spectator,distance=..30] run tp @s ~ -999 ~