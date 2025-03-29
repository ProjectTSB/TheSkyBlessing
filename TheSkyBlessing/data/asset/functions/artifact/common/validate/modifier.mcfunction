#> asset:artifact/common/validate/modifier
# @within function
#   asset:artifact/common/give
#   asset:artifact/common/validate/modifier

# validate
    execute unless data storage asset:artifact CopiedModifiers[-1].Type run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Type","color":"red"}]
    execute unless data storage asset:artifact CopiedModifiers[-1].Amount run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Amount","color":"red"}]
    execute unless data storage asset:artifact CopiedModifiers[-1].Operation run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Operation","color":"red"}]
    # execute unless data storage asset:artifact CopiedModifiers[-1].MaxStack
    # execute unless data storage asset:artifact CopiedModifiers[-1].StackReduction

# loop
    data remove storage asset:artifact CopiedModifiers[-1]
    execute if data storage asset:artifact CopiedModifiers[0] run function asset:artifact/common/validate/modifier
