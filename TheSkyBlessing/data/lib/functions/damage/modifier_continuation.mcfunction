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

data modify storage api: Argument.Damage set from storage lib: Argument.Damage
data modify storage api: Argument.AttackType set from storage lib: Argument.AttackType
data modify storage api: Argument.ElementType set from storage lib: Argument.ElementType
data modify storage api: Argument.FixedDamage set from storage lib: Argument.FixedDamage
data modify storage api: Argument.BypassModifier set from storage lib: Argument.BypassModifier

function api:damage/modifier_continuation