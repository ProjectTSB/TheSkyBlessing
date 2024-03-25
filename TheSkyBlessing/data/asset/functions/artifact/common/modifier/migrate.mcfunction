#> asset:artifact/common/modifier/migrate
# @within function
#   asset:artifact/common/give
#   asset:artifact/common/modifier/migrate

# 前データの用意
    data modify storage asset:temp Modifier set from storage asset:artifact CustomNBT.AttributeModifiers[-1]
    data modify storage asset:artifact Modifiers append value {}
# データを移し替える
    data modify storage asset:artifact Modifiers[-1].Type set from storage asset:temp Modifier.AttributeName
    data modify storage asset:artifact Modifiers[-1].Amount set from storage asset:temp Modifier.Amount
    execute if data storage asset:temp Modifier{Operation:0} run data modify storage asset:artifact Modifiers[-1].Operation set value "add"
    execute if data storage asset:temp Modifier{Operation:1} run data modify storage asset:artifact Modifiers[-1].Operation set value "multiply_base"
    execute if data storage asset:temp Modifier{Operation:2} run data modify storage asset:artifact Modifiers[-1].Operation set value "multiply"

# 他の要素があればループ
    data remove storage asset:temp Modifier
    data remove storage asset:artifact CustomNBT.AttributeModifiers[-1]
    execute if data storage asset:artifact CustomNBT.AttributeModifiers[0] run function asset:artifact/common/modifier/migrate
