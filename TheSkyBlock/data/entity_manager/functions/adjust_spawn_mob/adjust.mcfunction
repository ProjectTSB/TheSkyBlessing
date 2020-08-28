#> entity_manager:adjust_spawn_mob/adjust
#
# 自然沸きしたMobをTSB仕様に調整します
#
# @

#> Temp
# @private
    #declare tag HasArmor

# 防具周りの処理
    execute if data entity @s ArmorItems[0].Count run tag @s add HasArmor
    execute if data entity @s ArmorItems[1].Count run tag @s add HasArmor
    execute if data entity @s ArmorItems[2].Count run tag @s add HasArmor
    execute if data entity @s ArmorItems[3].Count run tag @s add HasArmor
    execute if entity @s[tag=HasArmor] run function entity_manager:adjust_spawn_mob/armor
    tag @s remove HasArmor
# 調整済タグ
    tag @s add AdjustedEntity