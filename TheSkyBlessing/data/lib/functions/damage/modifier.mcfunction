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

function api:damage/modifier