#> lib:damage/modifier_continuation
#
# Argument.Damageを実行者の補正値で補正します
#
# この関数はresetを使用しない状態で二度目のmodifierをかける場合に利用してください。
#
# @deprecated change to `api:damage/modifier_continuation`
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

function api:damage/modifier_continuation