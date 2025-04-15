#> api:damage/
#
# 実行者のエンティティにダメージを与えます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# Metadata に指定したデータは、artifact, mob の関連トリガーに渡されます。
#
# @input
#   as entity
#   storage api:
#       Argument.Damage : float
#       Argument.AttackType : Enum
#       Argument.ElementType? : Enum
#       Argument.FixedDamage? : boolean
#       ├ Argument.BypassModifier? : boolean
#       ├ Argument.BypassArmorDefense? : boolean
#       ├ Argument.BypassToughness? : boolean
#       ├ Argument.BypassEnchantments? : boolean
#       ├ Argument.BypassResistance? : boolean
#       └ Argument.BypassDifficulty? : boolean
#       Argument.ReduceEnchantment? : id(minecraft:enchantment) | { id: id(minecraft:enchantment), modifier?: int }
#       Argument.DeathMessage? : TextComponent || TextComponent[]
#       Argument.AdditionalMPHeal? : int (default: PersistentArgument.AdditionalMPHeal)
#       Argument.DisableLog? : boolean (default: false)
#       Argument.ApplyTrigger? : boolean (default: true)
#       Argument.Metadata? : any
# @api

# 引数チェック
    execute unless data storage api: Argument.Damage run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Damage","color":"red"}]
    execute unless data storage api: Argument.AttackType run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" AttackType","color":"red"}]
    execute unless data storage api: Argument.ElementType run data modify storage api: Argument.ElementType set value "None"
    execute if data storage api: Argument{FixedDamage:true} run data modify storage api: Argument.BypassModifier set value true
    execute if data storage api: Argument{FixedDamage:true} run data modify storage api: Argument.BypassArmorDefense set value true
    execute if data storage api: Argument{FixedDamage:true} run data modify storage api: Argument.BypassToughness set value true
    execute if data storage api: Argument{FixedDamage:true} run data modify storage api: Argument.BypassEnchantments set value true
    execute if data storage api: Argument{FixedDamage:true} run data modify storage api: Argument.BypassResistance set value true
    execute if data storage api: Argument{FixedDamage:true} run data modify storage api: Argument.BypassDifficulty set value true
    execute unless data storage api: Argument.BypassModifier run data modify storage api: Argument.BypassModifier set value false
    execute unless data storage api: Argument.BypassArmorDefense run data modify storage api: Argument.BypassArmorDefense set value false
    execute unless data storage api: Argument.BypassToughness run data modify storage api: Argument.BypassToughness set value false
    execute unless data storage api: Argument.BypassEnchantments run data modify storage api: Argument.BypassEnchantments set value false
    execute unless data storage api: Argument.BypassResistance run data modify storage api: Argument.BypassResistance set value false
    execute unless data storage api: Argument.BypassDifficulty run data modify storage api: Argument.BypassDifficulty set value false
    execute unless data storage api: Argument.AdditionalMPHeal run data modify storage api: Argument.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute unless data storage api: Argument.DisableLog run data modify storage api: Argument.DisableLog set value false
    execute unless data storage api: Argument.ApplyTrigger run data modify storage api: Argument.ApplyTrigger set value true

# Healthを持つ干渉可能なEntityかつ死んでいなければ実行
    execute if entity @s[type=#lib:living,tag= ExtendedCollision,tag=!Uninterferable,tag=!Death] at @s anchored eyes positioned ^ ^ ^ run return run function api:mob/apply_to_forward_target/with_non-idempotent.m {CB:"api:damage/core/attack",Key:"api:damage/",IsForwardedOnly:true}
    execute if entity @s[type=#lib:living,tag=!ExtendedCollision,tag=!Uninterferable,tag=!Death] at @s anchored eyes positioned ^ ^ ^ run function api:damage/core/attack
