#> asset:mob/0081.snow_cloud/tick/6.recursion
#
#
#
# @within function asset:mob/0081.snow_cloud/tick/5.snowing
# @within function asset:mob/0081.snow_cloud/tick/6.recursion

# 再帰暴走防止用スコア
    #scoreboard players add @s 29.Loop 1

# 再帰終了条件を満たしたときの効果
    execute if entity @e[type=polar_bear,scores={MobID=81},distance=..1] run function asset:mob/0081.snow_cloud/tick/7.snowed

# 再帰ループ
    execute unless entity @e[type=polar_bear,scores={MobID=81},distance=..1] if block ~ ~1 ~ #asset:mob/0081.snow_cloud/no_collision positioned ~ ~1 ~ run function asset:mob/0081.snow_cloud/tick/6.recursion

