#> asset:mob/0079.thundercloud/tick/4.fall_thunder
#
#
#
# @within function
#   asset:mob/0079.thundercloud/tick/3.thunder
#   asset:mob/0079.thundercloud/tick/4.fall_thunder

# 演出
    particle dust 1 1 0 1.3 ~ ~ ~ 0.05 0.05 0.05 0 2 normal @a
    execute unless block ~ ~ ~ #lib:no_collision_without_fluid run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.6 2.0 0

# プレイヤーがいればダメージ
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..1.2] as @a[gamemode=!creative,gamemode=!spectator,distance=..1.2] run function asset:mob/0079.thundercloud/tick/5.thunder_damage


# 自身から30ブロック離れるかプレイヤーが1.2ブロック以内にいるか地面に当たるまで再帰
    execute if entity @s[distance=..30] unless entity @p[gamemode=!spectator,distance=..1.2] if block ~ ~ ~ #lib:no_collision_without_fluid positioned ^ ^ ^0.5 run function asset:mob/0079.thundercloud/tick/4.fall_thunder