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
#   EnableDuplication? : boolean
#   AttackInfo? : Component
#   MPCost : int
#   MPRequire? : int
#   ConsumeItem? : {Item: TextComponent, Count: int, Extra?: TextComponent}
#   LocalCooldown? : int
#   TypeCooldown? : {Type: enum(CooldownType), Duration: int}
#   SpecialCooldown? : int
#   DisableCooldownMessage? : boolean
#   DisableMPMessage? : boolean
#   DisableBreakSound? : boolean
#   CanUsedGod : God[]
# @output item 神器
# @within function asset:artifact/*/give/2.give

#> Inv
# @private
#declare score_holder $InvSize

# storage検証
    execute unless data storage asset:artifact ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:artifact Item run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Item","color":"red"}]
    execute unless data storage asset:artifact Name run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Name","color":"red"}]
    execute unless data storage asset:artifact Lore run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Lore","color":"red"}]
    execute unless data storage asset:artifact Slot run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Slot","color":"red"}]
    execute unless data storage asset:artifact Trigger run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Trigger","color":"red"}]
    execute unless data storage asset:artifact MPCost unless data storage asset:artifact MPHealWhenHit run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" MPCost","color":"red"},{"text":" or","color":"white"},{"text":" MPHealWhenHit","color":"red"}]
    execute unless data storage asset:artifact CanUsedGod run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" CanUsedGod","color":"red"}]
# 各データ設定
    function asset_manager:artifact/create/set_data
# 神器排出
    execute unless data storage asset:context Type run data modify storage asset:context Type set value "give"
    # execute if data storage asset:context {Type:"box"} // 何もする必要がない
    execute if data storage asset:context {Type:"drop"} run loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Type:"drop",Important:true} as @e[type=item,nbt={Item:{tag:{TSB:{}}}},distance=..0.3] run function asset:artifact/common/protect
    execute if data storage asset:context {Type:"give"} run function api:inventory/get_size
    execute if data storage asset:context {Type:"give"} if score $InvSize Lib matches ..35 run loot give @s mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Type:"give"} if score $InvSize Lib matches 36.. run loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick
    execute if data storage asset:context {Type:"give"} if score $InvSize Lib matches 36.. as @e[type=item,nbt={Item:{tag:{TSB:{}}}},distance=..0.3] run function asset:artifact/common/protect
    execute if data storage asset:context {Type:"replace"} run function asset:artifact/common/replace

# リセット
    scoreboard players reset $InvSize Lib
    data remove storage asset:context Type
    data remove storage asset:artifact ID
    data remove storage asset:artifact Item
    data remove storage asset:artifact Name
    data remove storage asset:artifact Lore
    data remove storage asset:artifact RemainingCount
    data remove storage asset:artifact Slot
    data remove storage asset:artifact Trigger
    data remove storage asset:artifact Condition
    data remove storage asset:artifact EnableDuplication
    data remove storage asset:artifact AttackInfo
    data remove storage asset:artifact MPCost
    data remove storage asset:artifact MPRequire
    data remove storage asset:artifact ConsumeItem
    data remove storage asset:artifact CanUsedGod
    data remove storage asset:artifact CustomNBT
    data remove storage asset:artifact LocalCooldown
    data remove storage asset:artifact TypeCooldown
    data remove storage asset:artifact SpecialCooldown
    data remove storage asset:artifact DisableCooldownMessage
    data remove storage asset:artifact DisableMPMessage
    data remove storage asset:artifact DisableBreakSound
    data remove storage asset:artifact MPHealWhenHit
