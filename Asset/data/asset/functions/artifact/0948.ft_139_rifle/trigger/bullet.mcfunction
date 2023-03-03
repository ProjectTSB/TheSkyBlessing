#> asset:artifact/0948.ft_139_rifle/trigger/bullet
#
#
#
# @within function
#       asset:artifact/0948.ft_139_rifle/trigger/3.main
#       asset:artifact/0948.ft_139_rifle/trigger/bullet

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] add LandingTarget

# 演出
    particle dust 0 0.733 1 0.5 ~ ~ ~ 0 0 0 0 6

# 距離減衰をするためにスコアを増やす
    scoreboard players add $Distance_Damping Temporary 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:artifact/0948.ft_139_rifle/trigger/hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:artifact/0948.ft_139_rifle/trigger/bullet