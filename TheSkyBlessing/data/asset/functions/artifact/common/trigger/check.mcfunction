#> asset:artifact/common/trigger/check
# @within function
#   asset:artifact/common/give
#   asset:artifact/common/trigger/check

# validate
    execute unless data storage asset:temp Triggers[-1].Slot run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Slot","color":"red"}]
    execute unless data storage asset:temp Triggers[-1].Trigger run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Trigger","color":"red"}]
    # execute unless data storage asset:temp Triggers[-1].Condition run
    # execute unless data storage asset:temp Triggers[-1].AttackInfo run
    execute unless data storage asset:temp Triggers[-1].MPCost run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" MPCost","color":"red"}]
    # execute unless data storage asset:temp Triggers[-1].MPRequire run
    # execute unless data storage asset:temp Triggers[-1].CostText run
    # execute unless data storage asset:temp Triggers[-1].LocalCooldown run
    # execute unless data storage asset:temp Triggers[-1].SpecialCooldown run
    # execute unless data storage asset:temp Triggers[-1].DisableCooldownMessage run
    # execute unless data storage asset:temp Triggers[-1].DiableMPMessage run

# loop
    data remove storage asset:temp Triggers[-1]
    execute if data storage asset:temp Triggers[0] run function asset:artifact/common/trigger/check
