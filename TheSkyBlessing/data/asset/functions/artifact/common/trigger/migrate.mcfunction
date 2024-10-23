#> asset:artifact/common/trigger/migrate
# @within function asset:artifact/common/give

# validate
    execute unless data storage asset:artifact Slot run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Slot","color":"red"}]
    execute unless data storage asset:artifact Trigger run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Trigger","color":"red"}]
    # execute unless data storage asset:artifact Condition run
    # execute unless data storage asset:artifact AttackInfo run
    execute unless data storage asset:artifact MPCost run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" MPCost","color":"red"}]
    # execute unless data storage asset:artifact MPRequire run
    # execute unless data storage asset:artifact CostText run
    # execute unless data storage asset:artifact LocalCooldown run
    # execute unless data storage asset:artifact SpecialCooldown run
    # execute unless data storage asset:artifact DisableCooldownMessage run
    # execute unless data storage asset:artifact DiableMPMessage run

# migrate
    data modify storage asset:artifact Triggers append value {}
    data modify storage asset:artifact Triggers[0].Slot set from storage asset:artifact Slot
    data modify storage asset:artifact Triggers[0].Trigger set from storage asset:artifact Trigger
    data modify storage asset:artifact Triggers[0].Condition set from storage asset:artifact Condition
    data modify storage asset:artifact Triggers[0].AttackInfo set from storage asset:artifact AttackInfo
    data modify storage asset:artifact Triggers[0].MPCost set from storage asset:artifact MPCost
    data modify storage asset:artifact Triggers[0].MPRequire set from storage asset:artifact MPRequire
    data modify storage asset:artifact Triggers[0].CostText set from storage asset:artifact CostText
    data modify storage asset:artifact Triggers[0].LocalCooldown set from storage asset:artifact LocalCooldown
    data modify storage asset:artifact Triggers[0].SpecialCooldown set from storage asset:artifact SpecialCooldown
    data modify storage asset:artifact Triggers[0].DisableCooldownMessage set from storage asset:artifact DisableCooldownMessage
    data modify storage asset:artifact Triggers[0].DisableMPMessage set from storage asset:artifact DisableMPMessage

# reset
    data remove storage asset:artifact Slot
    data remove storage asset:artifact Trigger
    data remove storage asset:artifact Condition
    data remove storage asset:artifact AttackInfo
    data remove storage asset:artifact MPCost
    data remove storage asset:artifact MPRequire
    data remove storage asset:artifact CostText
    data remove storage asset:artifact LocalCooldown
    data remove storage asset:artifact SpecialCooldown
    data remove storage asset:artifact DisableCooldownMessage
    data remove storage asset:artifact DisableMPMessage
