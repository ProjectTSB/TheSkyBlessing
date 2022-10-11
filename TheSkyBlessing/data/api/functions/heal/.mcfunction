#> api:heal/
#
# 実行者のエンティティを回復させます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @input
#   as living entity
#   storage api: Argument.Heal : float
#   storage api: Argument.FixedHeal? : boolean(default: false)
# @api

# 引数チェック
    execute unless data storage api: Argument.Heal run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Heal","color":"red"}]
# プレイヤー
    execute if entity @s[type=player] run function api:heal/core/player
# non-プレイヤー
    execute if entity @s[type=#lib:living,type=!player,tag=!Uninterferable] run function api:heal/core/non-player