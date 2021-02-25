#> asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet
#
# 再起する弾
#
# @within function
#   asset:sacred_treasure/0212.anti_materiel_rifle/3.main
#   asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!minecraft:player,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!minecraft:player,dx=0] run tag @e[type=#lib:living,type=!minecraft:player,dx=0] add LandingTarget

# 演出
    particle minecraft:smoke ~ ~ ~ 0 0 0 0 1
    particle minecraft:cloud ~ ~ ~ 0 0 0 0 1
    particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0 1

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..80] run function asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet

# 着弾
    execute if entity @s[tag=Landing] run function asset:sacred_treasure/0212.anti_materiel_rifle/3.2.bullet_damage

