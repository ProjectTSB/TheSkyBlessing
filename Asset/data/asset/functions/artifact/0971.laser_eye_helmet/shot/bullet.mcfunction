#> asset:artifact/0971.laser_eye_helmet/shot/bullet
#
# ビーム部
#
# @within function
#    asset:artifact/0971.laser_eye_helmet/shot/3.main
#    asset:artifact/0971.laser_eye_helmet/shot/bullet

# ここから先は神器側の効果の処理を書く

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] add LandingTarget

# 演出
    particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0 1
    particle minecraft:dust 0.075 0.604 0.063 0.7 ~ ~ ~ 0 0 0 0 0

# 距離減衰をするためにスコアを増やす
    scoreboard players add $Distance_Damping Temporary 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:artifact/0971.laser_eye_helmet/shot/hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:artifact/0971.laser_eye_helmet/shot/bullet