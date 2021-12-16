#> asset:sacred_treasure/lib/give
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
# インベントリのサイズ取得
    function api:data_get/inventory
    execute store result score $InvSize Temporary if data storage api: Inventory[]
    execute if data storage asset:sacred_treasure Items[{Slot:100b}] run scoreboard players remove $InvSize Temporary 1
    execute if data storage asset:sacred_treasure Items[{Slot:101b}] run scoreboard players remove $InvSize Temporary 1
    execute if data storage asset:sacred_treasure Items[{Slot:102b}] run scoreboard players remove $InvSize Temporary 1
    execute if data storage asset:sacred_treasure Items[{Slot:103b}] run scoreboard players remove $InvSize Temporary 1
    execute if data storage asset:sacred_treasure Items[{Slot:-106b}] run scoreboard players remove $InvSize Temporary 1
# 神器give
    execute if score $InvSize Temporary matches ..35 run loot give @s mine 10000 0 10000 debug_stick
    execute if score $InvSize Temporary matches 36.. run loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick
# リセット
    scoreboard players reset $InvSize Temporary
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