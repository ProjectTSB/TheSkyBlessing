#> asset:artifact/example/attack/damage
#
#
#
# @within function asset:artifact/example/attack/

execute store result storage api: Argument.Damage float 1 run function api:mob/get_max_health
data modify storage api: Argument.AttackType set value "Physical"
data modify storage api: Argument.ElementType set value "None"
data modify storage api: Argument.FixedDamage set value 1b
execute unless data storage api: {DamageLibModified:true} as @p[tag=this] run function api:damage/modifier
execute if data storage api: {DamageLibModified:true} as @p[tag=this] run function api:damage/modifier_continuation
function api:damage/
