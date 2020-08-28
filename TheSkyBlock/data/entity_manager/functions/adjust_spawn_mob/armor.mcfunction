#> entity_manager:adjust_spawn_mob/armor
#
# 防具の防御力を0にし、Attributesにその分の値を加算する
#
# @within function entity_manager:adjust_spawn_mob/adjust

#> Temp
# @private
    #declare score_holder $ArmorPoints
    #declare score_holder $ArmorThoughnessPoints

# 防御力0化処理
    data modify entity @s ArmorItems[].tag.AttributeModifiers append value {Amount:0,AttributeName:"minecraft:generic.armor",Name:"",UUID:[I;0,0,0,0]}

# Attributes加算処理
    # 初期値
        execute store result score $ArmorPoints Temporary run data get entity @s Attributes[{Name:"minecraft:generic.armor"}].Base 10
        execute store result score $ArmorThoughnessPoints Temporary run data get entity @s Attributes[{Name:"minecraft:generic.armor_toughness"}].Base 10

    # カメの甲羅
        execute if data entity @s ArmorItems[{id:"minecraft:turtle_helmet"}] run scoreboard players add $ArmorPoints Temporary 20
    # 革装備
        execute if data entity @s ArmorItems[{id:"minecraft:leather_helmet"}] run scoreboard players add $ArmorPoints Temporary 10
        execute if data entity @s ArmorItems[{id:"minecraft:leather_chestplate"}] run scoreboard players add $ArmorPoints Temporary 30
        execute if data entity @s ArmorItems[{id:"minecraft:leather_leggings"}] run scoreboard players add $ArmorPoints Temporary 20
        execute if data entity @s ArmorItems[{id:"minecraft:leather_boots"}] run scoreboard players add $ArmorPoints Temporary 10
    # 金装備
        execute if data entity @s ArmorItems[{id:"minecraft:golden_helmet"}] run scoreboard players add $ArmorPoints Temporary 20
        execute if data entity @s ArmorItems[{id:"minecraft:golden_chestplate"}] run scoreboard players add $ArmorPoints Temporary 50
        execute if data entity @s ArmorItems[{id:"minecraft:golden_leggings"}] run scoreboard players add $ArmorPoints Temporary 30
        execute if data entity @s ArmorItems[{id:"minecraft:golden_boots"}] run scoreboard players add $ArmorPoints Temporary 10
    # チェーン装備
        execute if data entity @s ArmorItems[{id:"minecraft:chainmail_helmet"}] run scoreboard players add $ArmorPoints Temporary 20
        execute if data entity @s ArmorItems[{id:"minecraft:chainmail_chestplate"}] run scoreboard players add $ArmorPoints Temporary 50
        execute if data entity @s ArmorItems[{id:"minecraft:chainmail_leggings"}] run scoreboard players add $ArmorPoints Temporary 40
        execute if data entity @s ArmorItems[{id:"minecraft:chainmail_boots"}] run scoreboard players add $ArmorPoints Temporary 10
    # 鉄装備
        execute if data entity @s ArmorItems[{id:"minecraft:iron_helmet"}] run scoreboard players add $ArmorPoints Temporary 20
        execute if data entity @s ArmorItems[{id:"minecraft:iron_chestplate"}] run scoreboard players add $ArmorPoints Temporary 60
        execute if data entity @s ArmorItems[{id:"minecraft:iron_leggings"}] run scoreboard players add $ArmorPoints Temporary 50
        execute if data entity @s ArmorItems[{id:"minecraft:iron_boots"}] run scoreboard players add $ArmorPoints Temporary 20
    # ダイヤモンド装備
        # generic.armor
            execute if data entity @s ArmorItems[{id:"minecraft:diamond_helmet"}] run scoreboard players add $ArmorPoints Temporary 30
            execute if data entity @s ArmorItems[{id:"minecraft:diamond_chestplate"}] run scoreboard players add $ArmorPoints Temporary 80
            execute if data entity @s ArmorItems[{id:"minecraft:diamond_leggings"}] run scoreboard players add $ArmorPoints Temporary 60
            execute if data entity @s ArmorItems[{id:"minecraft:diamond_boots"}] run scoreboard players add $ArmorPoints Temporary 30
        # generic.armor_thoughness
            execute if data entity @s ArmorItems[{id:"minecraft:diamond_helmet"}] run scoreboard players add $ArmorThoughnessPoints Temporary 20
            execute if data entity @s ArmorItems[{id:"minecraft:diamond_chestplate"}] run scoreboard players add $ArmorThoughnessPoints Temporary 20
            execute if data entity @s ArmorItems[{id:"minecraft:diamond_leggings"}] run scoreboard players add $ArmorThoughnessPoints Temporary 20
            execute if data entity @s ArmorItems[{id:"minecraft:diamond_boots"}] run scoreboard players add $ArmorThoughnessPoints Temporary 20
    # ネザライト装備
        # generic.armor
            execute if data entity @s ArmorItems[{id:"minecraft:netherite_helmet"}] run scoreboard players add $ArmorPoints Temporary 30
            execute if data entity @s ArmorItems[{id:"minecraft:netherite_chestplate"}] run scoreboard players add $ArmorPoints Temporary 80
            execute if data entity @s ArmorItems[{id:"minecraft:netherite_leggings"}] run scoreboard players add $ArmorPoints Temporary 60
            execute if data entity @s ArmorItems[{id:"minecraft:netherite_boots"}] run scoreboard players add $ArmorPoints Temporary 30
        # generic.armor_thoughness
            execute if data entity @s ArmorItems[{id:"minecraft:netherite_helmet"}] run scoreboard players add $ArmorThoughnessPoints Temporary 30
            execute if data entity @s ArmorItems[{id:"minecraft:netherite_chestplate"}] run scoreboard players add $ArmorThoughnessPoints Temporary 30
            execute if data entity @s ArmorItems[{id:"minecraft:netherite_leggings"}] run scoreboard players add $ArmorThoughnessPoints Temporary 30
            execute if data entity @s ArmorItems[{id:"minecraft:netherite_boots"}] run scoreboard players add $ArmorThoughnessPoints Temporary 30

    # Attributesに代入
        execute store result entity @s Attributes[{Name:"minecraft:generic.armor"}].Base double 0.1 run scoreboard players get $ArmorPoints Temporary
        execute store result entity @s Attributes[{Name:"minecraft:generic.armor_toughness"}].Base double 0.1 run scoreboard players get $ArmorThoughnessPoints Temporary
        scoreboard players reset $ArmorPoints Temporary
        scoreboard players reset $ArmorThoughnessPoints Temporary