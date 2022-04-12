#> asset:mob/0081.snow_cloud/tick/6.recursion
#
#
#
# @within function
#   asset:mob/0081.snow_cloud/tick/5.snowing
#   asset:mob/0081.snow_cloud/tick/6.recursion

# 再帰終了条件を満たしたときの効果
    execute if entity @e[type=polar_bear,scores={MobID=81},distance=..1] at @s run function asset:mob/0081.snow_cloud/tick/7.snow_damage

# 再帰ループ
    execute unless entity @e[type=polar_bear,scores={MobID=81},distance=..1] if block ~ ~1 ~ #lib:no_collision_without_fluid positioned ~ ~1 ~ run function asset:mob/0081.snow_cloud/tick/6.recursion

