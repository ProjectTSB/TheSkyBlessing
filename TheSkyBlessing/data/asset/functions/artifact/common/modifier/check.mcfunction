#> asset:artifact/common/modifier/check
# @within function
#   asset:artifact/common/give
#   asset:artifact/common/modifier/check

# validate
    execute unless data storage asset:temp Modifiers[-1].Type run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Type","color":"red"}]
    execute unless data storage asset:temp Modifiers[-1].Amount run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Amount","color":"red"}]
    execute unless data storage asset:temp Modifiers[-1].Operation run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Operation","color":"red"}]
    # execute unless data storage asset:temp Modifiers[-1].MaxStack
    # execute unless data storage asset:temp Modifiers[-1].StackReduction

# loop
    data remove storage asset:temp Modifiers[-1]
    execute if data storage asset:temp Modifiers[0] run function asset:artifact/common/modifier/check
