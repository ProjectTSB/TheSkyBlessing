#> asset:artifact/common/give
#
# 神器を入手します
#
# @input storage asset:artifact
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
#   MPHealWhenHit : int
#   ConsumeItem? : {Item: TextComponent, Count: int, Extra?: TextComponent}
#   LocalCooldown? : int
#   TypeCooldown? : {Type: enum(CooldownType), Duration: int}
#   SecondaryTypeCooldown? : {Type: enum(CooldownType), Duration: int}
#   SpecialCooldown? : int
#   AttackInfo? : Component
#   PartsMax? : int
#   Equipment? : Component
#   DisabledFlag? : Component
#   CanUsedGod : God[]
#   CustomNBT? : Item.tag
# @output item 神器
# @within function asset:artifact/*/give/2.give

#> Inv
# @private
    #declare score_holder $InvSize
    #declare score_holder $ID

# マイグレーション (asset側を今置き換えたくない)
    execute if data storage asset:artifact {EnableDuplication:true} run data modify storage asset:artifact PartsMax set value 9
    execute if data storage asset:artifact {DisabledCheckFlags:["MPRequire"]} run data modify storage asset:artifact DisabledFlag.Check.MPRequire set value true
    execute if data storage asset:artifact {DisabledCheckFlags:["LocalCooldown"]} run data modify storage asset:artifact DisabledFlag.Check.LocalCooldown set value true
    execute if data storage asset:artifact {DisabledCheckFlags:["TypeCooldown"]} run data modify storage asset:artifact DisabledFlag.Check.TypeCooldown set value true
    execute if data storage asset:artifact {DisabledCheckFlags:["SecondaryTypeCooldown"]} run data modify storage asset:artifact DisabledFlag.Check.SecondaryTypeCooldown set value true
    execute if data storage asset:artifact {DisabledCheckFlags:["SpecialCooldown"]} run data modify storage asset:artifact DisabledFlag.Check.SpecialCooldown set value true
    execute if data storage asset:artifact {DisabledCheckFlags:["Believe"]} run data modify storage asset:artifact DisabledFlag.Check.Believe set value true
    data modify storage asset:artifact DisabledFlag.Check.CDMessage set from storage asset:artifact DisableCooldownMessage
    data modify storage asset:artifact DisabledFlag.Check.MPMessage set from storage asset:artifact DisableMPMessage
    data modify storage asset:artifact DisabledFlag.Use.BreakSound set from storage asset:artifact DisableBreakSound

# storage検証
    execute unless data storage asset:artifact ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute if data storage asset:artifact ID store result score $ID Temporary run data get storage asset:artifact ID
    execute if data storage asset:artifact ID if score $ID Temporary > $65535 Const run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"65535より大きい ID は利用できません"}]
    execute if data storage asset:artifact ID run scoreboard players reset $ID
    execute unless data storage asset:artifact Item run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Item","color":"red"}]
    execute unless data storage asset:artifact Name run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Name","color":"red"}]
    execute unless data storage asset:artifact Lore run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Lore","color":"red"}]
    execute unless data storage asset:artifact Slot run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Slot","color":"red"}]
    execute unless data storage asset:artifact Trigger run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Trigger","color":"red"}]
    execute unless data storage asset:artifact MPCost unless data storage asset:artifact MPHealWhenHit run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" MPCost","color":"red"},{"text":" or","color":"white"},{"text":" MPHealWhenHit","color":"red"}]
    execute unless data storage asset:artifact PartsMax run data modify storage asset:artifact PartsMax set value 1
    execute if data storage asset:artifact Equipment unless data storage asset:artifact Equipment.Slot run data modify storage asset:artifact Equipment.Slot set from storage asset:artifact Slot
    execute if data storage asset:artifact Equipment unless data storage asset:artifact Equipment.MaxStack run data modify storage asset:artifact Equipment.MaxStack set from storage asset:artifact PartsMax
    execute if data storage asset:artifact Equipment.Modifiers[0] run data modify storage asset:artifact CopiedModifiers set from storage asset:artifact Equipment.Modifiers
    execute if data storage asset:artifact Equipment.Modifiers[0] run function asset:artifact/common/validate/modifier
    execute if data storage asset:artifact Equipment.Modifiers[0] run data remove storage asset:artifact CopiedModifiers
    execute unless data storage asset:artifact CanUsedGod run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" CanUsedGod","color":"red"}]
    execute if data storage asset:artifact SecondaryTypeCooldown unless data storage asset:artifact TypeCooldown run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"TypeCooldown が指定されていないにも関わらず SecondaryTypeCooldown が指定されています"}]
# 各データ設定
    function asset_manager:artifact/create/set_data
# 神器排出
    # execute if data storage asset:context {Type:"box"} // 何もする必要がない
    # execute if data storage asset:context {Type:"storage"} // 何もする必要がない
    execute if data storage asset:context {Type:"drop"} run loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Type:"drop",Important:true} as @e[type=item,nbt={Item:{tag:{TSB:{}}}},distance=..0.3] run function asset:artifact/common/protect
    execute if data storage asset:context {Type:"give"} run function api:inventory/get_size
    execute if data storage asset:context {Type:"give"} if score $InvSize Lib matches ..35 run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Type:"give"} if score $InvSize Lib matches 36.. run loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Type:"give"} if score $InvSize Lib matches 36.. as @e[type=item,nbt={Item:{tag:{TSB:{}}}},distance=..0.3] run function asset:artifact/common/protect
    execute if data storage asset:context {Type:"replace"} run function asset:artifact/common/replace

# リセット
    scoreboard players reset $InvSize Lib
    data remove storage asset:artifact ID
    data remove storage asset:artifact Item
    data remove storage asset:artifact Name
    data remove storage asset:artifact Lore
    data remove storage asset:artifact RemainingCount
    data remove storage asset:artifact Slot
    data remove storage asset:artifact Trigger
    data remove storage asset:artifact Condition
    data remove storage asset:artifact EnableDuplication
    data remove storage asset:artifact MPCost
    data remove storage asset:artifact MPRequire
    data remove storage asset:artifact MPHealWhenHit
    data remove storage asset:artifact PartsMax
    data remove storage asset:artifact ConsumeItem
    data remove storage asset:artifact LocalCooldown
    data remove storage asset:artifact TypeCooldown
    data remove storage asset:artifact SecondaryTypeCooldown
    data remove storage asset:artifact SpecialCooldown
    data remove storage asset:artifact AttackInfo
    data remove storage asset:artifact Equipment
    data remove storage asset:artifact DisabledFlag
    data remove storage asset:artifact DisableCooldownMessage
    data remove storage asset:artifact DisableMPMessage
    data remove storage asset:artifact DisableBreakSound
    data remove storage asset:artifact DisabledCheckFlags
    data remove storage asset:artifact CanUsedGod
    data remove storage asset:artifact CustomNBT
