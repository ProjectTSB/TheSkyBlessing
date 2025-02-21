#> api:damage/modifier_continuation
#
# Argument.Damageを実行者の補正値で補正します
#
# この関数はresetを使用しない状態で二度目のmodifierをかける場合に利用してください。
#
# @input
#   as entity
#   storage api:
#       Argument.Damage : float
#       Argument.AttackType : Enum
#       Argument.ElementType? : Enum
#       Argument.FixedDamage? : boolean
#       └ Argument.BypassModifier? : boolean
# @output storage api: Argument.Damage : float
# @api

# 引数チェック
    execute unless data storage api: Argument.Damage run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Damage","color":"red"}]
    execute unless data storage api: Argument.AttackType run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" AttackType","color":"red"}]
    execute unless data storage api: Argument.ElementType run data modify storage api: Argument.ElementType set value "None"
    execute if data storage api: Argument{FixedDamage:true} run data modify storage api: Argument.BypassModifier set value true
    execute unless data storage api: Argument.BypassModifier run data modify storage api: Argument.BypassModifier set value false
# 補正されていないのに呼び出された場合のエラー
    execute unless data storage api: {DamageModified:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"api:damage/modifier_continuation","color":"gold"},{"text":"が","color":"white"},{"text":"api:damage/modifier","color":"gold"},{"text":"より前に使用されています。","color":"white"}]
    execute if data storage global {IsProduction:1b} unless data storage api: {DamageModified:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"あなたが製作者ではない場合、Discordサーバーのお問い合わせより報告してください。","color":"white"}]
# 補正フラグを立てる
    data modify storage api: DamageModified set value true
# 補正
    execute if entity @s[type=player] run function api:damage/core/modify/player
    execute if entity @s[type=!player] run function api:damage/core/modify/non-player
