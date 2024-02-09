#> mob_manager:init/modify_health
#
#
#
# @within function mob_manager:init/

# 最大値を記録する
    execute store result score @s MobHealthMax run attribute @s generic.max_health get 10
# 付近雑魚のHPマルチ補正をかける
    execute if entity @s[tag=Enemy] run function mob_manager:init/multiplay_multiplier/normal
# 体力をスコアに代入
    scoreboard players operation @s MobHealth = @s MobHealthMax
# 体力と緩衝体力は 1024 に設定する
    attribute @s generic.max_health base set 1024
    attribute @s generic.max_absorption base set 1024
    data modify entity @s Health set value 1024f
    data modify entity @s AbsorptionAmount set value 1024f