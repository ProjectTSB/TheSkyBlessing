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
# すでに補正されている場合のエラー
    execute if data storage lib: {DamageLibModified:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:damage/modifier","color":"gold"},{"text":"がresetされずに使用されています。","color":"white"}]
    execute if data storage global {IsProduction:0b} if data storage lib: {DamageLibModified:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"直近に使用された","color":"white"},{"text":"lib:damage/","color":"gold"},{"text":"が"}]
    execute if data storage global {IsProduction:0b} if data storage lib: {DamageLibModified:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"最後に","color":"white"},{"text":"lib:damage/reset","color":"gold"},{"text":"を行なっていない可能性があります。","color":"white"}]
    execute if data storage global {IsProduction:0b} if data storage lib: {DamageLibModified:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"また、意図してresetせずに使用する場合、二つ目以降の","color":"white"},{"text":"lib:damage/modifier","color":"gold"},{"text":"を","color":"white"}]
    execute if data storage global {IsProduction:0b} if data storage lib: {DamageLibModified:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:damage/modifier_continuation","color":"gold"},{"text":"に変更してください。","color":"white"}]
    execute if data storage global {IsProduction:1b} if data storage lib: {DamageLibModified:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"あなたが製作者ではない場合、Discordサーバーのお問い合わせより報告してください。","color":"white"}]
# 補正フラグを立てる
    data modify storage lib: DamageLibModified set value true
# 補正
    execute if entity @s[type=player] run function lib:damage/core/modify/player
    execute if entity @s[type=!player] run function lib:damage/core/modify/non-player