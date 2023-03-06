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

execute unless data storage api: Argument.Damage run data modify storage api: Argument.Damage set from storage lib: Argument.Damage
execute unless data storage api: Argument.AttackType run data modify storage api: Argument.AttackType set from storage lib: Argument.AttackType
execute unless data storage api: Argument.ElementType run data modify storage api: Argument.ElementType set from storage lib: Argument.ElementType
execute unless data storage api: Argument.FixedDamage run data modify storage api: Argument.FixedDamage set from storage lib: Argument.FixedDamage
execute unless data storage api: Argument.BypassModifier run data modify storage api: Argument.BypassModifier set from storage lib: Argument.BypassModifier
data modify storage api: Argument.BypassArmorDefense set from storage lib: Argument.BypassArmorDefense
data modify storage api: Argument.BypassToughness set from storage lib: Argument.BypassToughness
data modify storage api: Argument.BypassEnchantments set from storage lib: Argument.BypassEnchantments
data modify storage api: Argument.BypassResistance set from storage lib: Argument.BypassResistance
data modify storage api: Argument.ReduceEnchantment set from storage lib: Argument.ReduceEnchantment
data modify storage api: Argument.DeathMessage set from storage lib: Argument.DeathMessage

function api:damage/