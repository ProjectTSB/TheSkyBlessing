#> asset:mob/0216.gray_guardian/tick/2.skill_bow/4.shot
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/2.skill_bow/1.skill_bow

# 着弾検知
    execute if entity @p[gamemode=!spectator,distance=..2] run tag @s[gamemode=!spectator,distance=..2] add Landing
    execute unless block ^ ^ ^1 #lib:no_collision run tag @s add Landing
# ターゲットにタグ付与
    execute if entity @p[gamemode=!spectator,distance=..2] run tag @p[gamemode=!spectator,distance=..2] add LandingTarget

# 演出
    particle minecraft:dust 0.145 0.18 0.153 0.75 ~ ~ ~ 0 0 0 0 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:mob/0216.gray_guardian/tick/2.skill_bow/5.damage

# 再起
    execute positioned ^ ^ ^1 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0216.gray_guardian/tick/2.skill_bow/4.shot