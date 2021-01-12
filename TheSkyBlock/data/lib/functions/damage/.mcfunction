#> lib:damage/
#
# 実行者のエンティティにダメージを与えます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @input
#   as entity
#   storage lib:
#       Argument.Damage : float
#       Argument.AttackType : Enum
#       Argument.ElementType? : Enum
#       Argument.DisableParticle? : boolean
#       Argument.BypassArmor? : boolean
#       Argument.BypassResist? : boolean
# @api

# 引数チェック
    execute unless data storage lib: Argument.Damage run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Damage","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Damage at lib:damage/"}}}]
    execute unless data storage lib: Argument.AttackType run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" AttackType","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument AttackType at lib:damage/"}}}]
# Healthを持つEntityであれば実行
    execute if data storage lib: Argument.Damage if data storage lib: Argument.AttackType if entity @s[type=#lib:living] run function lib:damage/core/attack