#> asset:mob/0261.laser_eye_mk2/tick/4.shoot
#
# ビーム処理
#
# @within function
#   asset:mob/0261.laser_eye_mk2/tick/3.ready
#   asset:mob/0261.laser_eye_mk2/tick/4.shoot

# ここから先は神器側の効果の処理を書く
# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=player,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=player,dx=0] run tag @e[type=#lib:living,type=player,gamemode=!spectator,dx=0,limit=1] add LandingTarget

# 演出
    particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0 1
    particle minecraft:composter ~ ~ ~ 0.3 0.3 0.3 0 9
    particle minecraft:dust 0.075 0.604 0.063 0.7 ~ ~ ~ 0 0 0 0 0
    particle minecraft:dust 0.075 0.604 0.063 0.7 ~ ~ ~ 0.3 0.3 0.3 0 9

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0261.laser_eye_mk2/tick/5.damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0261.laser_eye_mk2/tick/4.shoot