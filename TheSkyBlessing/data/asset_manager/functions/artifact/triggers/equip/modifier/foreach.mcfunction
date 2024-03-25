#> asset_manager:artifact/triggers/equip/modifier/foreach
#
# Modifierの適用処理
#
# @within function
#   asset_manager:artifact/triggers/equip/modifier/
#   asset_manager:artifact/triggers/equip/modifier/foreach

# 初期化
    scoreboard players set $CustomModifier Temporary 0
    data modify storage asset:artifact Modifier set from storage asset:artifact Modifiers[-1]
    data modify storage asset:artifact Modifier.UUID set value [I;1,1,0,0]
    data modify storage asset:artifact Modifier.UUID[2] set from storage asset:artifact NewItems[-1].tag.TSB.ID
    execute store result storage asset:artifact Modifier.UUID[3] int 1 run scoreboard players get $FixedSlotIndex Temporary

# apiに代入
    data modify storage api: Argument.Amount set from storage asset:artifact Modifier.Amount
    data modify storage api: Argument.Operation set from storage asset:artifact Modifier.Operation
    data modify storage api: Argument.UUID set from storage asset:artifact Modifier.UUID

# カスタムModifierなら各自処理
    execute if data storage asset:artifact Modifier{Type:"attackBase"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"attackBase"} run function api:modifier/attack/base/add
    execute if data storage asset:artifact Modifier{Type:"attackFire"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"attackFire"} run function api:modifier/attack/fire/add
    execute if data storage asset:artifact Modifier{Type:"attackMagic"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"attackMagic"} run function api:modifier/attack/magic/add
    execute if data storage asset:artifact Modifier{Type:"attackPhysical"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"attackPhysical"} run function api:modifier/attack/physical/add
    execute if data storage asset:artifact Modifier{Type:"attackThunder"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"attackThunder"} run function api:modifier/attack/thunder/add
    execute if data storage asset:artifact Modifier{Type:"attackWater"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"attackWater"} run function api:modifier/attack/water/add
    execute if data storage asset:artifact Modifier{Type:"defenseBase"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"defenseBase"} run function api:modifier/defense/base/add
    execute if data storage asset:artifact Modifier{Type:"defenseFire"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"defenseFire"} run function api:modifier/defense/fire/add
    execute if data storage asset:artifact Modifier{Type:"defenseMagic"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"defenseMagic"} run function api:modifier/defense/magic/add
    execute if data storage asset:artifact Modifier{Type:"defensePhysical"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"defensePhysical"} run function api:modifier/defense/physical/add
    execute if data storage asset:artifact Modifier{Type:"defenseThunder"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"defenseThunder"} run function api:modifier/defense/thunder/add
    execute if data storage asset:artifact Modifier{Type:"defenseWater"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"defenseWater"} run function api:modifier/defense/water/add
    execute if data storage asset:artifact Modifier{Type:"heal"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"heal"} run function api:modifier/heal/add
    execute if data storage asset:artifact Modifier{Type:"receiveHeal"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"receiveHeal"} run function api:modifier/receive_heal/add
    execute if data storage asset:artifact Modifier{Type:"mpRegen"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"mpRegen"} run function api:modifier/mp_regen/add

# バニラのModifierを処理
    execute if score $CustomModifier Temporary matches 0 run data modify storage asset:artifact Modifier.UUID3 set from storage asset:artifact Modifier.UUID[2]
    execute if score $CustomModifier Temporary matches 0 run data modify storage asset:artifact Modifier.UUID4 set from storage asset:artifact Modifier.UUID[3]
    execute if score $CustomModifier Temporary matches 0 run function asset_manager:artifact/triggers/equip/modifier/reshape_uuid.m with storage asset:artifact Modifier
    execute if score $CustomModifier Temporary matches 0 run function asset_manager:artifact/triggers/equip/modifier/generic_modifier.m with storage asset:artifact Modifier

# リセット
    scoreboard players reset $CustomModifier Temporary
    data remove storage api: Argument.Amount
    data remove storage api: Argument.Operation
    data remove storage api: Argument.UUID
    data remove storage asset:artifact Modifier
    data remove storage asset:artifact Modifiers[-1]

# ループ
    execute if data storage asset:artifact Modifiers[0] run function asset_manager:artifact/triggers/equip/modifier/foreach
