#> asset_manager:artifact/give/
#
# 神器を入手します
#
# @input storage asset:artifact
#   ID : int
#   Item : ItemID
#   Name : TextComponent
#   Lore : TextComponent[]
#   RemainingCount? : int
#   RemainingCountMax? : int
#   Slot : Slot
#   Trigger : Trigger
#   SubTriggers : Trigger[]
#   Condition? : TextComponent
#   AttackInfo? : Component
#   ConsumeItem? : {Item: TextComponent, Count: int, Extra?: TextComponent}
#   MPCost : int
#   MPRequire? : int
#   LocalCooldown? : int
#   TypeCooldown? : {Type: enum(CooldownType), Duration: int}
#   SpecialCooldown? : int
#   DisableCooldownMessage? : boolean
#   DisableMPMessage? : boolean
#   IgnoreItemUpdate? : boolean
#   DisableBreakSound? : boolean
#   EquipID? : int
#   Modifiers : Component[]
#   ├ Type : string
#   ├ Amount : double
#   ├ Operation : "add" | "multiply_base" | "multiply"
#   ├ MaxStack? : int
#   └ StackReduction? : double
#   PartsMax? : int
#   CanUsedGod : God[]
#   CustomNBT? : Component
# @output item 神器
# @within function api:artifact/core/from_id

#> Inv
# @private
    #declare score_holder $InvSize

# storage検証
    execute unless data storage asset:artifact ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:artifact Item run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Item","color":"red"}]
    execute unless data storage asset:artifact Name run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Name","color":"red"}]
    execute unless data storage asset:artifact Lore run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Lore","color":"red"}]
    # execute unless data storage asset:artifact RemainingCount run
    execute unless data storage asset:artifact RemainingCountMax if data storage asset:artifact RemainingCount run data modify storage asset:artifact RemainingCountMax set from storage asset:artifact RemainingCount
    execute unless data storage asset:artifact Slot run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Slot","color":"red"}]
    execute if data storage asset:artifact Trigger run function asset_manager:artifact/give/validate/trigger
    # execute unless data storage asset:artifact SubTriggers[0] run
    # execute unless data storage asset:artifact DisableBreakSound run
    # execute unless data storage asset:artifact EquipID run
    # execute unless data storage asset:artifact Modifiers[0] run
    execute if data storage asset:artifact Modifiers[0] run data modify storage asset:artifact CopiedModifiers set from storage asset:artifact Modifiers
    execute if data storage asset:artifact Modifiers[0] run function asset_manager:artifact/give/validate/modifier
    execute if data storage asset:artifact Modifiers[0] run data remove storage asset:artifact CopiedModifiers
    execute unless data storage asset:artifact PartsMax run data modify storage asset:artifact PartsMax set value 1
    execute unless data storage asset:artifact CanUsedGod run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" CanUsedGod","color":"red"}]
    # execute unless data storage asset:artifact CustomNBT run
# 各データ設定
    function asset_manager:artifact/create/set_data
# 神器排出
    # execute if data storage asset:context {Type:"box"} // 何もする必要がない
    execute if data storage asset:context {Type:"drop"} run loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Type:"drop",Important:true} as @e[type=item,nbt={Item:{tag:{TSB:{}}}},distance=..0.3] run function asset_manager:artifact/give/protect
    execute if data storage asset:context {Type:"give"} run function api:inventory/get_size
    execute if data storage asset:context {Type:"give"} if score $InvSize Lib matches ..35 run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Type:"give"} if score $InvSize Lib matches 36.. run loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Type:"give"} if score $InvSize Lib matches 36.. as @e[type=item,nbt={Item:{tag:{TSB:{}}}},distance=..0.3] run function asset_manager:artifact/give/protect
    execute if data storage asset:context {Type:"replace"} run function asset_manager:artifact/give/replace
# リセット
    scoreboard players reset $InvSize Lib
    data remove storage asset:context Type
    data remove storage asset:artifact ID
    data remove storage asset:artifact Item
    data remove storage asset:artifact Name
    data remove storage asset:artifact Lore
    data remove storage asset:artifact RemainingCount
    data remove storage asset:artifact RemainingCountMax
    data remove storage asset:artifact Slot
    data remove storage asset:artifact Trigger
    data remove storage asset:artifact SubTriggers
    data remove storage asset:artifact Condition
    data remove storage asset:artifact AttackInfo
    data remove storage asset:artifact ConsumeItem
    data remove storage asset:artifact MPCost
    data remove storage asset:artifact MPRequire
    data remove storage asset:artifact MPHealWhenHit
    data remove storage asset:artifact LocalCooldown
    data remove storage asset:artifact TypeCooldown
    data remove storage asset:artifact SpecialCooldown
    data remove storage asset:artifact DisableCooldownMessage
    data remove storage asset:artifact DisableMPMessage
    data remove storage asset:artifact IgnoreItemUpdate
    data remove storage asset:artifact DisableBreakSound
    data remove storage asset:artifact EquipID
    data remove storage asset:artifact Modifiers
    data remove storage asset:artifact PartsMax
    data remove storage asset:artifact CanUsedGod
    data remove storage asset:artifact CustomNBT
