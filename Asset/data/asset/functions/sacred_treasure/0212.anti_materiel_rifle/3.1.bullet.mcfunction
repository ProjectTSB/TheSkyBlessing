#> asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet
#
# 再起する弾
#
# @within
#   function asset:sacred_treasure/0212.anti_materiel_rifle/3.main
#   function asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!minecraft:player,dx=0] run tag @s add Landing
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!minecraft:player,dx=0] run tag @e[type=#lib:living,type=!minecraft:player,dx=0] add LandingTarget
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# 演出
    particle minecraft:smoke ~ ~ ~ 0 0 0 0 1
    particle minecraft:cloud ~ ~ ~ 0 0 0 0 1
    particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:sacred_treasure/0212.anti_materiel_rifle/3.2.bullet_damage

# 再起
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living,type=!minecraft:player,dx=0] positioned ~0.5 ~0.5 ~0.5 if entity @s[tag=!Landing,distance=..80] if block ^ ^ ^0.5 #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet

# ブロックとかエンチチを貫通したい場合に使うの
        #execute if entity @s[distance=..30] positioned ^ ^ ^0.5 run function asset:sacred_treasure/0212.anti_materiel_rifle/3.1.bullet

# 着弾タグを消す
    tag @s remove Landing