#> mob_manager:init/modify_health
#
#
#
# @within function mob_manager:init/

# 最大値を記録する
    execute store result score @s MobHealthMax run attribute @s generic.max_health get 100
# 付近雑魚のHPマルチ補正をかける
    execute if entity @s[tag=Enemy] run function mob_manager:init/multiplay_multiplier/normal
# 体力を緩衝体力に移す
    execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players get @s MobHealthMax
    attribute @s generic.max_health base set 0.01
    data modify entity @s Health set value 0.01f