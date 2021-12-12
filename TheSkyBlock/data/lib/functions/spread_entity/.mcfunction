#> lib:spread_entity/
#
# 実行entityをBoundsの範囲内のランダムな座標へ移動させます。
#
# @input storage lib:
#   Argument.Bounds: double[2][3]
#   X,Y,Zの-,+方向の最大移動範囲
# @api

# 引数チェック
    execute unless data storage lib: Argument.Bounds run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Bounds","color":"red"}]
# 実行
    execute if entity @s[type=!player] run function lib:spread_entity/core/teleport
    execute if entity @s[type=player] at @s run function lib:spread_entity/core/from_player