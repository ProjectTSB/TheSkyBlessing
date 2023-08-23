#> asset:mob/0055.hetukedah/tick/otetebeam/4.1.shoot
#
# ビーム処理再帰
#
# @within function
#   asset:mob/0055.hetukedah/**

# ここから先は神器側の効果の処理を書く
# 着弾検知
    execute if entity @a[gamemode=!spectator,distance=..3] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @a[gamemode=!spectator,distance=..3] run tag @a[gamemode=!spectator,distance=..3,limit=1] add LandingTarget

# 演出
    particle dust 1 1 0 1 ~ ~ ~ 0 0 0 0 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0055.hetukedah/tick/otetebeam/4.2.damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0055.hetukedah/tick/otetebeam/4.1.shoot