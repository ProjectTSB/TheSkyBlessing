#> mob_manager:init/modify_health
#
#
#
# @within function mob_manager:init/

# 最大値を記録する
    execute store result score @s MobHealthMax run attribute @s generic.max_health get 1
    execute if score @s MobHealthMax matches 0 store result score @s MobHealthMax run data get entity @s AbsorptionAmount 1
# 付近雑魚のHPマルチ補正をかける
    execute if entity @s[tag=Enemy] run function mob_manager:init/multiplay_multiplier/normal
    execute if entity @s[tag=!Enemy] run scoreboard players operation @s MobHealthMax *= $100 Const
# 現在体力を設定する
    scoreboard players operation @s MobHealth = @s MobHealthMax
# 体力を引き上げる
    attribute @s generic.max_health base set 1024
    data modify entity @s Health set value 512f
