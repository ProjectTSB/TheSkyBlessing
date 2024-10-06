#> asset_manager:artifact/triggers/equipments/update_effect/modifier/add/custom
# @within function asset_manager:artifact/triggers/equipments/update_effect/modifier/add/

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
execute if data storage asset:artifact Modifier{Type:"maxHealth"} run scoreboard players set $CustomModifier Temporary 1
execute if data storage asset:artifact Modifier{Type:"maxHealth"} run function api:modifier/max_health/add
execute if data storage asset:artifact Modifier{Type:"maxMP"} run scoreboard players set $CustomModifier Temporary 1
execute if data storage asset:artifact Modifier{Type:"maxMP"} run function api:modifier/max_mp/add
