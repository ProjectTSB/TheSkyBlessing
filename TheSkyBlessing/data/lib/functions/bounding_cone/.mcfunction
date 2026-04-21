#> lib:bounding_cone/
#
# 円錐型の範囲にいるエンティティにタグを付与する
# （底面はないのでセレクタで最大距離を設定するなどしてください）
#
# @input args
#   position: 実行位置
#       円錐の頂点
#   rotation: 実行向き
#       円錐の軸
#   storage lib: Argument.BoundingCone.Angle: float
#       円錐の頂角(0°~360°)
#   storage lib: Argument.BoundingCone.Selector: string
#       検索対象のセレクタ(distanceの最大距離を設定することを推奨)
#
# @output tag BoundingCone
#
# @api
#
#> return
# @api
    #declare tag BoundingCone

# 引数チェック
    execute unless data storage lib: Argument.BoundingCone.Angle run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:bounding_cone/","color":"gold"},{"text":"のAngle引数が不足しています。","color":"white"}]
    execute unless data storage lib: Argument.BoundingCone.Selector run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:bounding_cone/","color":"gold"},{"text":"のSelector引数が不足しています。","color":"white"}]

# 汎用エンティティを実行者にして計算
    execute as 0-0-0-0-0 run function lib:bounding_cone/core/calc
