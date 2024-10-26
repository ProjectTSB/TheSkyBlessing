#> asset:artifact/common/trigger/check
# @within function
#   asset:artifact/common/give

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
    # execute unless data storage asset:artifact DisableMPMessage run
