#> lib:bounding_cylinder/
#
# 円柱型の範囲にいるエンティティにタグを付与する
#
# @input args
#   position: 実行位置
#       円柱の底面の中心
#   storage lib: Argument.BoundingCylinder.Radius: double
#       円柱の半径
#   storage lib: Argument.BoundingCylinder.Height: double
#       円柱の高さ
#   storage lib: Argument.BoundingCylinder.Selector: string
#       検索対象のセレクタ
#
# @output tag BoundingCylinder
#
# @api
#
#> return
# @api
    #declare tag BoundingCylinder

# 引数チェック
    execute unless data storage lib: Argument.BoundingCylinder.Radius run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:bounding_cylinder/","color":"gold"},{"text":"のRadius引数が不足しています。","color":"white"}]
    execute unless data storage lib: Argument.BoundingCylinder.Height run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:bounding_cylinder/","color":"gold"},{"text":"のHeight引数が不足しています。","color":"white"}]
    execute unless data storage lib: Argument.BoundingCylinder.Selector run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:bounding_cylinder/","color":"gold"},{"text":"のSelector引数が不足しています。","color":"white"}]

# 実行位置取得
    execute summon marker run function lib:bounding_cylinder/core/get_pos

# パラメータをコピー
    data modify storage lib: BoundingCylinder.Macro.Radius set from storage lib: Argument.BoundingCylinder.Radius
    execute store result storage lib: BoundingCylinder.Macro.HeightHalf float 0.0005 run data get storage lib: Argument.BoundingCylinder.Height 1000
    data modify storage lib: BoundingCylinder.Macro.Selector set from storage lib: Argument.BoundingCylinder.Selector

# マクロで判定
    function lib:bounding_cylinder/core/detect.m with storage lib: BoundingCylinder.Macro

# ストレージリセット
    data remove storage lib: BoundingCylinder
    data remove storage lib: Argument.BoundingCylinder
