#> lib:damage/simple
#
# 実行者のエンティティにダメージを与えます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @input
#   as entity
#   storage lib: Argument.Damage : float
# @api

# 引数チェック
    execute unless data storage lib: Argument.Damage run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Damage","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Damage at lib:damage/simple"}}}]
# プレイヤーの処理
    execute if entity @s[type=player] run function lib:damage/core/simple.player-process
# Mob処理
    execute if entity @s[type=!player] run function lib:damage/core/simple.non-player-process