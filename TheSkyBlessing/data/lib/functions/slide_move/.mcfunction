#> lib:slide_move/
#
# 実行entityをブロックに引っかかる軌道で前進させます
#
# @input args
#   as entity
#   at position
#   at rotation
#   storage lib: Argument.SlideMove.Speed: double 進む距離
#   storage lib: Argument.SlideMove.Conditions: string 引っかかるブロックの条件if/unless（省略した場合は"unless block ~ ~ ~ #lib:no_collision/"）
# @api
#
#> temp
# @within function lib:slide_move/**

# 引数チェック
    execute unless data storage lib: Argument.SlideMove.Speed run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:slide_move/","color":"gold"},{"text":"のSpeed引数が不足しています。","color":"white"}]
    execute unless data storage lib: Argument.SlideMove.Conditions run data modify storage lib: Argument.SlideMove.Conditions set value "unless block ~ ~ ~ #lib:no_collision/"

# 引数コピー
    execute store result storage lib: SlideMove.Macro.Speed double 0.00005 run data get storage lib: Argument.SlideMove.Speed 10000
    data modify storage lib: SlideMove.Macro.Conditions set from storage lib: Argument.SlideMove.Conditions

# 幾何学処理
    function lib:slide_move/core/geometry.m with storage lib: SlideMove.Macro

# 後片付け
    data remove storage lib: Argument.SlideMove.Speed
    data remove storage lib: Argument.SlideMove.Conditions
    data remove storage lib: SlideMove.Macro
