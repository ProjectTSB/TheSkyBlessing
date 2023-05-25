#> mob_manager:init/modify_data
#
#
#
# @within function mob_manager:init/

# 最大値を記録する
    execute store result score @s MobHealthMax run attribute @s generic.max_health get 1
# 付近雑魚のHPマルチ補正をかける
    execute if entity @s[tag=Enemy] run function mob_manager:init/multiplay_multiplier/normal
# 体力を緩衝体力に移す
    execute store result entity @s AbsorptionAmount float 1 run scoreboard players get @s MobHealthMax
    attribute @s generic.max_health base set 0.01
    data modify entity @s Health set value 0.01f

# 属性耐性
    # EntityStorage呼び出し
        function oh_my_dat:please
    # 直貼り
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Defense set value {Physical:1.0d,Magic:1.0d,Fire:1.0d,Thunder:1.0d,Water:1.0d}