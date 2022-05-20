#> lib:damage/core/reset
#
#
#
# @within function lib:damage/reset

data remove storage lib: Argument.Damage
data remove storage lib: Argument.AttackType
data remove storage lib: Argument.ElementType
data remove storage lib: Argument.BypassResist
data remove storage lib: Argument.DeathMessage
data remove storage lib: Argument.FixedDamage
data remove storage lib: Argument.DisableParticle

scoreboard players reset $LatestModifiedUser UserID
scoreboard players reset $LatestModifiedEntity MobUUID