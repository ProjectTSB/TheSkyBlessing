#> lib:heal/
#
# 実行者のエンティティを回復させます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @input
#   as player
#   storage lib: Argument.Heal : float
#   storage lib: Argument.DisableParticle?: boolean
# @api

# 引数チェック
    execute unless data storage lib: Argument.Heal run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Heal","color":"red"}]
    execute unless data storage lib: Argument.DisableParticle run data modify storage lib: Argument.DisableParticle set value 0b
# プレイヤー
    execute if entity @s[type=player] run function lib:heal/core/player
# non-プレイヤー
    execute if entity @s[type=#lib:living,type=!player,tag=!Uninterferable] run function lib:heal/core/non-player