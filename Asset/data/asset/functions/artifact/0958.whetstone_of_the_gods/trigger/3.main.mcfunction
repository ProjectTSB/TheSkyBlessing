#> asset:artifact/0958.whetstone_of_the_gods/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0958.whetstone_of_the_gods/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く
    item replace entity @s weapon.mainhand with air
    execute if data storage asset:context Items.mainhand{id:   "minecraft:wooden_sword"} run data modify storage api: Argument.ID set value 1011
    execute if data storage asset:context Items.mainhand{id:    "minecraft:stone_sword"} run data modify storage api: Argument.ID set value 1012
    execute if data storage asset:context Items.mainhand{id:     "minecraft:iron_sword"} run data modify storage api: Argument.ID set value 1013
    execute if data storage asset:context Items.mainhand{id:   "minecraft:golden_sword"} run data modify storage api: Argument.ID set value 1014
    execute if data storage asset:context Items.mainhand{id:  "minecraft:diamond_sword"} run data modify storage api: Argument.ID set value 1015
    execute if data storage asset:context Items.mainhand{id:"minecraft:netherite_sword"} run data modify storage api: Argument.ID set value 1016
    function api:artifact/give/from_id