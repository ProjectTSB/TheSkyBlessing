#> lib:damage/modifier
#
# Argument.Damageを実行者の補正値で補正します
#
# @deprecated change to `api:damage/modifier`
# @input
#   as entity
#   storage lib:
#       Argument.Damage : float
#       Argument.AttackType : Enum
#       Argument.ElementType? : Enum
#       Argument.FixedDamage? : boolean
#       └ Argument.BypassModifier? : boolean
# @output storage lib: Argument.Damage : float
# @api

data modify storage api: Argument.Damage set from storage lib: Argument.Damage
data modify storage api: Argument.AttackType set from storage lib: Argument.AttackType
data modify storage api: Argument.ElementType set from storage lib: Argument.ElementType
data modify storage api: Argument.FixedDamage set from storage lib: Argument.FixedDamage
data modify storage api: Argument.BypassModifier set from storage lib: Argument.BypassModifier

function api:damage/modifier