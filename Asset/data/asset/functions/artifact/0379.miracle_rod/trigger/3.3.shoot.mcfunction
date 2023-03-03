#> asset:artifact/0379.miracle_rod/trigger/3.3.shoot
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0379.miracle_rod/trigger/3.2.magic_circle
#   asset:artifact/0379.miracle_rod/trigger/3.3.shoot

# ここから先は神器側の効果の処理を書く
# 着弾検知
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2,limit=1] add LandingTarget

# 演出
    particle dust 1 1 1 1 ~ ~ ~ 0.2 0.2 0.2 0 20
    particle enchant ~ ~ ~ 0.4 0.4 0.4 0 20

# 着弾
    execute if entity @s[tag=Landing] run function asset:artifact/0379.miracle_rod/trigger/3.4.damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:artifact/0379.miracle_rod/trigger/3.3.shoot