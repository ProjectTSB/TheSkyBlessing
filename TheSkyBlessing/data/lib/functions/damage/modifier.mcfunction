#> lib:damage/modifier
#
# Argument.Damageを実行者の補正値で補正します
#
# @input
#   as entity
#   storage lib:
#       Argument.Damage : float
#       Argument.FixedDamage : boolean
#       Argument.AttackType : Enum
#       Argument.ElementType? : Enum
# @output storage lib: Argument.Damage : float
# @api

# 引数チェック
    execute unless data storage lib: Argument.Damage run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Damage","color":"red"}]
    execute unless data storage lib: Argument.AttackType run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" AttackType","color":"red"}]
    execute unless data storage lib: Argument.ElementType run data modify storage lib: Argument.ElementType set value "None"
    execute unless data storage lib: Argument.FixedDamage run data modify storage lib: Argument.FixedDamage set value 0b
# 補正
    execute if entity @s[type=player] run function lib:damage/core/modify/player
    execute if entity @s[type=!player] run function lib:damage/core/modify/non-player