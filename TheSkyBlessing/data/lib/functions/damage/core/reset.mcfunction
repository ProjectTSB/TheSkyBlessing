#> lib:damage/core/reset
#
#
#
# @within function lib:damage/reset

data remove storage lib: Argument.Damage
data remove storage lib: Argument.AttackType
data remove storage lib: Argument.ElementType
data remove storage lib: Argument.DeathMessage
data remove storage lib: Argument.FixedDamage
data remove storage lib: Argument.BypassModifier
data remove storage lib: Argument.BypassArmorDefense
data remove storage lib: Argument.BypassToughness
data remove storage lib: Argument.BypassEnchantments
data remove storage lib: Argument.BypassResistance
data remove storage lib: Argument.DisableParticle
data remove storage lib: Argument.ReduceEnchantment

scoreboard players reset $LatestModifiedUser UserID
scoreboard players reset $LatestModifiedEntity MobUUID