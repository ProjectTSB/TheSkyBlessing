#> lib:heal/
#
# 実行者のエンティティを回復させます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @input
#   as player
#   storage lib: Argument.Heal : float
# @api

# 引数チェック
    execute unless data storage lib: Argument.Heal run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Heal","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing argument Heal at lib:heal/"}}}]
# 代入
    execute store result score $Fluctuation Lib run data get storage lib: Argument.Heal 100
# 負数の場合の処理
    execute if score $Fluctuation Lib matches ..-1 run scoreboard players set $Fluctuation Lib 0
# Healthを持つEntityであれば実行
    execute if data storage lib: Argument.Heal if entity @s[type=#lib:living] run function lib:score_to_health_wrapper/fluctuation