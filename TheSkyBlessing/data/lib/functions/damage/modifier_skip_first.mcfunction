#> lib:damage/modifier_skip_first
#
# lib:damage/modifierをスキップします
#
# @api

# すでに補正されている場合のエラー
    execute if data storage lib: {DamageLibModified:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:damage/modifier_skip_first","color":"gold"},{"text":"がresetされずに使用されています。","color":"white"}]
    execute if data storage global {IsProduction:1b} if data storage lib: {DamageLibModified:true} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"あなたが製作者ではない場合、Discordサーバーのお問い合わせより報告してください。","color":"white"}]
# 補正フラグを立てる
    data modify storage lib: DamageLibModified set value true