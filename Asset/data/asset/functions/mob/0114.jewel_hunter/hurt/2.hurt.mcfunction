#> asset:mob/0114.jewel_hunter/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0114.jewel_hunter/hurt/1.trigger

# 演出
    particle minecraft:dust 8 1 8 1 ~ ~1.2 ~ 0.5 0.4 0.5 1 50 normal @a
    playsound minecraft:block.amethyst_cluster.step hostile @a ~ ~ ~ 1 1 0

# Attackerが離れた場所にいる場合近くのプレイヤー全員に遠距離攻撃
    execute unless entity @p[tag=Attacker,distance=..5] positioned ~ ~1.6 ~ facing entity @p[gamemode=!spectator,distance=..32] feet run function asset:mob/0114.jewel_hunter/hurt/3.reflect