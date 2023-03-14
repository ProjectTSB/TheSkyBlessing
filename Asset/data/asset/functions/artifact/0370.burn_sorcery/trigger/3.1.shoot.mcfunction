#> asset:artifact/0370.burn_sorcery/trigger/3.1.shoot
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0370.burn_sorcery/trigger/3.main
#   asset:artifact/0370.burn_sorcery/trigger/3.1.shoot

# ここから先は神器側の効果の処理を書く
# 着弾検知
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..2,limit=1] add LandingTarget

# 演出
    particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 5
    particle minecraft:lava ~ ~ ~ 0 0 0 1 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:artifact/0370.burn_sorcery/trigger/3.2.damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:artifact/0370.burn_sorcery/trigger/3.1.shoot