#> asset:artifact/0212.anti_materiel_rifle/trigger/3.1.bullet
#
# 再起する弾
#
# @within function
#   asset:artifact/0212.anti_materiel_rifle/trigger/3.main
#   asset:artifact/0212.anti_materiel_rifle/trigger/3.1.bullet

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] add LandingTarget

# 演出
    particle smoke ~ ~ ~ 0 0 0 0 1
    particle cloud ~ ~ ~ 0 0 0 0 1
    particle flame ~ ~ ~ 0.05 0.05 0.05 0 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:artifact/0212.anti_materiel_rifle/trigger/3.2.bullet_damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..80] run function asset:artifact/0212.anti_materiel_rifle/trigger/3.1.bullet

# タグを消す
    tag @s remove Landing