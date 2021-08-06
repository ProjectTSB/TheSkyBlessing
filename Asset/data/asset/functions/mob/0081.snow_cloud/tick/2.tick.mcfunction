#> asset:mob/0081.snow_cloud/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0081.snow_cloud/tick/1.trigger

# プレイヤーが下にいる場合動くコマンド(スコア蓄積、雪が降るパーティクル)
    execute positioned ~-0.75 ~-6 ~-0.75 if entity @a[gamemode=!creative,gamemode=!spectator,dx=1.5,dy=6,dz=1.5] run function asset:mob/0081.snow_cloud/tick/3.near_player_mcf

# パーティクル
    particle snowflake ~ ~ ~ 0.6 0.3 0.6 0 2 normal @a

# 最も近いプレイヤーの上に移動
    execute facing entity @p[gamemode=!creative,gamemode=!spectator] feet rotated ~ 0 if block ^ ^ ^0.2 #asset:mob/0081.snow_cloud/no_collision run tp @s ^ ^ ^0.2
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..4] if block ~ ~1 ~ #asset:mob/0081.snow_cloud/no_collision run tp @s ~ ~1 ~

# プレイヤーの上に移動しすぎたら降下(下30ブロック以内にプレイヤーがいて、下6ブロック以内にプレイヤーがいない場合降下)
    execute positioned ~-1 ~-30 ~-1 if entity @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=30,dz=2] at @s positioned ~-1 ~-6 ~-1 unless entity @a[gamemode=!creative,gamemode=!spectator,dx=2,dy=6,dz=2] at @s if block ~ ~-1 ~ #asset:mob/0081.snow_cloud/no_collision run tp @s ~ ~-1 ~
# 近くのプレイヤーに水魔法ダメージ
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..3] run function asset:mob/0081.snow_cloud/tick/4.near_damage

# 一定周期の特殊能力(分岐functionに記載)
    execute if score @s 29.SnowTick matches 60.. run function asset:mob/0081.snow_cloud/tick/5.snowing



