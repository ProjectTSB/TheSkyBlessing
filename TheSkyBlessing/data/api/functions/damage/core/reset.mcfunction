#> api:damage/core/reset
#
#
#
# @within function api:damage/reset

data remove storage api: Argument.Damage
data remove storage api: Argument.AttackType
data remove storage api: Argument.ElementType
data remove storage api: Argument.DeathMessage
data remove storage api: Argument.FixedDamage
data remove storage api: Argument.BypassModifier
data remove storage api: Argument.BypassArmorDefense
data remove storage api: Argument.BypassToughness
data remove storage api: Argument.BypassEnchantments
data remove storage api: Argument.BypassResistance
data remove storage api: Argument.DisableParticle
data remove storage api: Argument.ReduceEnchantment

scoreboard players reset $LatestModifiedUser UserID
scoreboard players reset $LatestModifiedEntity MobUUID