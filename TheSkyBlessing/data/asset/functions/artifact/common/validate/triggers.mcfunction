#> asset:artifact/common/validate/triggers
# @within function
#   asset:artifact/common/give
#   asset:artifact/common/validate/triggers

# validate
    execute unless data storage asset:artifact CopiedTriggers[-1].Event run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Triggers[].Event","color":"red"}]
    execute unless data storage asset:artifact CopiedTriggers[-1].Entry run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Triggers[].Entry","color":"red"}]
    execute if data storage asset:artifact CopiedTriggers[-1].Event run function asset:artifact/common/validate/trigger_event.m with storage asset:artifact CopiedTriggers[-1]

# loop
    data remove storage asset:artifact CopiedTriggers[-1]
    execute if data storage asset:artifact CopiedTriggers[0] run function asset:artifact/common/validate/triggers
