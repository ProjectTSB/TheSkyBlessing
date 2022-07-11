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
#       Argument.BypassResist? : boolean
#       Argument.DeathMessage? : TextComponent || TextComponent[]
# @api

# 引数チェック
    execute unless data storage lib: Argument.Damage run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Damage","color":"red"}]
    execute unless data storage lib: Argument.AttackType run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" AttackType","color":"red"}]
    execute unless data storage lib: Argument.ElementType run data modify storage lib: Argument.ElementType set value "None"
    execute unless data storage lib: Argument.BypassResist run data modify storage lib: Argument.BypassResist set value 0b

# Healthを持つ干渉可能なEntityかつ死んでいなければ実行
    execute if entity @s[type=#lib:living,tag=!Uninterferable,tag=!Death] at @s run function lib:damage/core/attack