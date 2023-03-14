#> asset:artifact/0607.u_and_w_06/trigger/3.1.bullet
#
# ビーム部
#
# @within function
#    asset:artifact/0607.u_and_w_06/trigger/3.main
#    asset:artifact/0607.u_and_w_06/trigger/3.1.bullet


# ここから先は神器側の効果の処理を書く

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] add LandingTarget

# 演出
    particle dust 0.161 0.161 0.161 1 ~ ~ ~ 0 0 0 0 0

# 着弾
    execute if entity @s[tag=Landing] run function asset:artifact/0607.u_and_w_06/trigger/3.2.hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:artifact/0607.u_and_w_06/trigger/3.1.bullet