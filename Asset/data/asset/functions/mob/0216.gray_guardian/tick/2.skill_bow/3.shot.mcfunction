#> asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot
#
#
#
# @within function
#   asset:mob/0216.gray_guardian/tick/2.skill_bow/1.skill_bow
#   asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,dx=0,dy=0,dz=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing
# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[gamemode=!spectator,dx=0,dy=0,dz=0] run tag @s add LandingTarget
    particle minecraft:dust 1 1 1 0.75 ~ ~ ~ 0 0 0 0 1
# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0216.gray_guardian/tick/2.skill_bow/4.hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.shot