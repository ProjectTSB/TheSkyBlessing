#> lib:damage/
#
# 実行者のエンティティにダメージを与えます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @deprecated change to `api:damage/`
# @input
#   as entity
#   storage lib:
#       Argument.Damage : float
#       Argument.AttackType : Enum
#       Argument.ElementType? : Enum
#       Argument.FixedDamage? : boolean
#       ├ Argument.BypassModifier? : boolean
#       ├ Argument.BypassArmorDefense? : boolean
#       ├ Argument.BypassToughness? : boolean
#       ├ Argument.BypassEnchantments? : boolean
#       └ Argument.BypassResistance? : boolean
#       Argument.ReduceEnchantment? : id(minecraft:enchantment) | { id: id(minecraft:enchantment), modifier?: int }
#       Argument.DeathMessage? : TextComponent || TextComponent[]
# @api

function api:damage/