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
#   MPCost : int
#   MPRequire? : int
#   CostText? : TextComponent
#   LocalCooldown? : int
#   SpecialCooldown? : int
#   CanUsedGod : God[]
# @output item 神器
# @within function asset:sacred_treasure/*/_.give

#> Private
# @private
    #declare tag AbstrictItem

# storage検証
    execute unless data storage asset:sacred_treasure ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument ID at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:sacred_treasure Item run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Item","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Item at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:sacred_treasure Name run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Name","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Name at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:sacred_treasure Lore run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Lore","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Lore at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:sacred_treasure Slot run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Slot","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Slot at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:sacred_treasure Trigger run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Trigger","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Trigger at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:sacred_treasure MPCost run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" MPCost","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument MPCost at asset:sacred_treasure/lib/give"}}}]
    execute unless data storage asset:sacred_treasure CanUsedGod run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" CanUsedGod","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument CanUsedGod at asset:sacred_treasure/lib/give"}}}]
# 元となるアイテム召喚
    execute at @s run summon item ~ ~ ~ {Item:{id:"barrier",Count:1b},Tags:["AbstrictItem"],PickupDelay:1s}
# 各データ設定
    execute as @e[type=item,tag=AbstrictItem,limit=1] run function asset_manager:sacred_treasure/core/create/set_data
# tag remove
    tag @e[type=item,tag=AbstrictItem] remove AbstrictItem
# リセット
    data remove storage asset:sacred_treasure ID
    data remove storage asset:sacred_treasure Item
    data remove storage asset:sacred_treasure Name
    data remove storage asset:sacred_treasure Lore
    data remove storage asset:sacred_treasure RemainingCount
    data remove storage asset:sacred_treasure Slot
    data remove storage asset:sacred_treasure Trigger
    data remove storage asset:sacred_treasure Condition
    data remove storage asset:sacred_treasure MPCost
    data remove storage asset:sacred_treasure MPRequire
    data remove storage asset:sacred_treasure CostText
    data remove storage asset:sacred_treasure CanUsedGod
    data remove storage asset:sacred_treasure CustomNBT
    data remove storage asset:sacred_treasure LocalCooldown
    data remove storage asset:sacred_treasure SpecialCooldown