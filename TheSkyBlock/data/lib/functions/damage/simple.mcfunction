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
# 代入
    execute store result score $Fluctuation Lib run data get storage lib: Argument.Damage 100
# 負数の場合の処理
    execute if score $Fluctuation Lib matches ..-1 run scoreboard players set $Fluctuation Lib 0
# Healthを持つEntityであれば実行
    scoreboard players operation $Fluctuation Lib *= $-1 Const
    execute if data storage lib: Argument.Damage if entity @s[type=#lib:living] run function lib:score_to_health_wrapper/fluctuation