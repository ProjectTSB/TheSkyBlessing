#> asset:artifact/0958.whetstone_of_the_gods/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0958.whetstone_of_the_gods/trigger/1.trigger

#> Val
# @private
#declare score_holder $MPMax

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く
# 剣を持っていることを判定する
    execute unless predicate asset:artifact/0958.whetstone_of_the_gods/has_weapon run tellraw @s [{"text":"剣以外を砥ぐことは出来ないようだ..."}]
    execute unless predicate asset:artifact/0958.whetstone_of_the_gods/has_weapon run tag @s remove CanUsed
# 神器ではないことを判定する
    execute if entity @s[tag=CanUsed] unless data storage asset:context id{mainhand:-2} run tellraw @s [{"text":"神器を砥ぐことは出来ないようだ..."}]
    execute if entity @s[tag=CanUsed] unless data storage asset:context id{mainhand:-2} run tag @s remove CanUsed
# 既に研がれていないことを判定する
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand.tag.Sharpened run tellraw @s [{"text":"既にこの剣は研がれているようだ..."}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand.tag.Sharpened run tag @s remove CanUsed
# 耐久が減っていないことを判定する
    execute if entity @s[tag=CanUsed] unless data storage asset:context Items.mainhand.tag{Damage:0} run tellraw @s [{"text":"既に切れ味が落ちている剣は砥げないようだ..."}]
    execute if entity @s[tag=CanUsed] unless data storage asset:context Items.mainhand.tag{Damage:0} run tag @s remove CanUsed
# 剣に応じたMP最大値を持っているかを判定する
    execute if entity @s[tag=CanUsed] store result score $MPMax Temporary run function lib:mp/get_max
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:    "minecraft:stone_sword"} unless score $MPMax Temporary matches 140.. run tellraw @s [{"text":"この材質の剣を砥ぐにはMP最大値が","color":"white"},{"text":"140","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:    "minecraft:stone_sword"} unless score $MPMax Temporary matches 140.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:     "minecraft:iron_sword"} unless score $MPMax Temporary matches 170.. run tellraw @s [{"text":"この材質の剣を砥ぐにはMP最大値が","color":"white"},{"text":"170","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:     "minecraft:iron_sword"} unless score $MPMax Temporary matches 170.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:   "minecraft:golden_sword"} unless score $MPMax Temporary matches 200.. run tellraw @s [{"text":"この材質の剣を砥ぐにはMP最大値が","color":"white"},{"text":"200","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:   "minecraft:golden_sword"} unless score $MPMax Temporary matches 200.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:  "minecraft:diamond_sword"} unless score $MPMax Temporary matches 230.. run tellraw @s [{"text":"この材質の剣を砥ぐにはMP最大値が","color":"white"},{"text":"230","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:  "minecraft:diamond_sword"} unless score $MPMax Temporary matches 230.. run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:"minecraft:netherite_sword"} unless score $MPMax Temporary matches 260.. run tellraw @s [{"text":"この材質の剣を砥ぐにはMP最大値が","color":"white"},{"text":"260","color":"aqua"},{"text":"必要なようだ...","color":"white"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context Items.mainhand{id:"minecraft:netherite_sword"} unless score $MPMax Temporary matches 260.. run tag @s remove CanUsed
# リセット
    scoreboard players reset $MPMax Temporary
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0958.whetstone_of_the_gods/trigger/3.main