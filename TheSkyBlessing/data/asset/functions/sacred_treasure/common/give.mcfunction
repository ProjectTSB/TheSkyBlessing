#> asset:sacred_treasure/common/give
#
# 神器を入手します
#
# @input storage asset:sacred_treasure
#   ID : int
#   Item : ItemID
#   Name : TextComponent
#   Lore : TextComponent[]
#   RemainingCount? : int
#   Slot : Slot
#   Trigger : Trigger
#   Condition? : TextComponent
#   AttackInfo? : Component
#   MPCost : int
#   MPRequire? : int
#   CostText? : TextComponent
#   LocalCooldown? : int
#   SpecialCooldown? : int
#   DisableCooldownMessage? : boolean
#   DisableMPMessage? : boolean
#   CanUsedGod : God[]
# @output item 神器
# @within function asset:sacred_treasure/*/give/2.give

#> Inv
# @private
#declare score_holder $InvSize

# storage検証
    execute unless data storage asset:sacred_treasure ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:sacred_treasure Item run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Item","color":"red"}]
    execute unless data storage asset:sacred_treasure Name run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Name","color":"red"}]
    execute unless data storage asset:sacred_treasure Lore run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Lore","color":"red"}]
    execute unless data storage asset:sacred_treasure Slot run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Slot","color":"red"}]
    execute unless data storage asset:sacred_treasure Trigger run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Trigger","color":"red"}]
    execute unless data storage asset:sacred_treasure MPCost run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" MPCost","color":"red"}]
    execute unless data storage asset:sacred_treasure CanUsedGod run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" CanUsedGod","color":"red"}]
# 各データ設定
    function asset_manager:sacred_treasure/create/set_data
# 神器排出
    # execute if data storage asset:context {Type:"box"} // 何もする必要がない
    execute if data storage asset:context {Type:"drop"} run loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick
    execute unless data storage asset:context {Type:"drop"} run function api:inventory/get_size
    execute unless data storage asset:context {Type:"drop"} if score $InvSize Lib matches ..35 run loot give @s mine 10000 0 10000 debug_stick
    execute unless data storage asset:context {Type:"drop"} if score $InvSize Lib matches 36.. run loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick
    execute unless data storage asset:context {Type:"drop"} if score $InvSize Lib matches 36.. as @e[type=item,nbt={Item:{tag:{TSB:{}}}},distance=..0.3] run data merge entity @s {Glowing:1b,Age:-32768}
# リセット
    scoreboard players reset $InvSize Lib
    data remove storage asset:sacred_treasure ID
    data remove storage asset:sacred_treasure Item
    data remove storage asset:sacred_treasure Name
    data remove storage asset:sacred_treasure Lore
    data remove storage asset:sacred_treasure RemainingCount
    data remove storage asset:sacred_treasure Slot
    data remove storage asset:sacred_treasure Trigger
    data remove storage asset:sacred_treasure Condition
    data remove storage asset:sacred_treasure AttackInfo
    data remove storage asset:sacred_treasure MPCost
    data remove storage asset:sacred_treasure MPRequire
    data remove storage asset:sacred_treasure CostText
    data remove storage asset:sacred_treasure CanUsedGod
    data remove storage asset:sacred_treasure CustomNBT
    data remove storage asset:sacred_treasure LocalCooldown
    data remove storage asset:sacred_treasure SpecialCooldown
    data remove storage asset:sacred_treasure DisableCooldownMessage
    data remove storage asset:sacred_treasure DisableMPMessage