#> asset:sacred_treasure/1027.kyrie/trigger/5.shoot
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/1027.kyrie/trigger/4.magic_circle
#   asset:sacred_treasure/1027.kyrie/trigger/5.shoot

# ここから先は神器側の効果の処理を書く
# 着弾検知
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2,limit=1] add LandingTarget

# 演出
    particle dust 100000000 2 0 2 ~ ~ ~ 0.2 0.2 0.2 0 5
    particle lava ~ ~ ~ 0.2 0.2 0.2 0 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:sacred_treasure/1027.kyrie/trigger/6.damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:sacred_treasure/1027.kyrie/trigger/5.shoot