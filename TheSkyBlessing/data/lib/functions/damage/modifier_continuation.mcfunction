#> lib:damage/modifier_continuation
#
# Argument.Damageを実行者の補正値で補正します
#
# この関数はresetを使用しない状態で二度目のmodifierをかける場合に利用してください。
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
# 補正されていないのに呼び出された場合のエラー
    execute unless data storage lib: {DamageLibModified:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:damage/modifier_continuation","color":"gold"},{"text":"が","color":"white"},{"text":"lib:damage/modifier","color":"gold"},{"text":"より前に使用されています。","color":"white"}]
    execute if data storage global {IsProduction:1b} unless data storage lib: {DamageLibModified:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"あなたが製作者ではない場合、Discordサーバーのお問い合わせより報告してください。","color":"white"}]
# 補正フラグを立てる
    data modify storage lib: DamageLibModified set value true
# 補正
    execute if entity @s[type=player] run function lib:damage/core/modify/player
    execute if entity @s[type=!player] run function lib:damage/core/modify/non-player