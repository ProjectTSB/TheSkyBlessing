#> asset:mob/0282.call_fulstuka/tick/1.skill_gun/4.shot
#
# 発砲します
#
# @within function
#   asset:mob/0282.call_fulstuka/tick/1.skill_gun/3.ready
#   asset:mob/0282.call_fulstuka/tick/1.skill_gun/4.shot

# 着弾検知
    execute if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2] add LandingTarget

# 演出
    particle dust 1 0 0.749 0.5 ~ ~ ~ 0 0 0 0 6

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0282.call_fulstuka/tick/1.skill_gun/5.damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0282.call_fulstuka/tick/1.skill_gun/4.shot