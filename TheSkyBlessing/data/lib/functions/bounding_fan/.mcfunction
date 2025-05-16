#> lib:bounding_fan/
#
# 厚みを持った扇形の範囲にいるエンティティにタグを付与する
#
# @input args
#   position: 実行位置
#       扇型の中心角、厚みの中心
#   rotation: 実行向き
#       中心角から見て扇形が広がる方向
#   storage lib: Argument.BoundingFan.Angle: double
#       扇形の中心角度(0°~360°)
#   storage lib: Argument.BoundingFan.Radius: double
#       扇形の半径
#   storage lib: Argument.BoundingFan.Height: double
#       範囲の厚み
#   storage lib: Argument.BoundingFan.Selector: string
#       検索対象のセレクタ
#
# @output tag BoundingFan
#
# @api
#
#> return
# @api
    #declare tag BoundingFan

# 引数チェック
    execute unless data storage lib: Argument.BoundingFan.Angle run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:bounding_fan/","color":"gold"},{"text":"のAngle引数が不足しています。","color":"white"}]
    execute unless data storage lib: Argument.BoundingFan.Radius run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:bounding_fan/","color":"gold"},{"text":"のRadius引数が不足しています。","color":"white"}]
    execute unless data storage lib: Argument.BoundingFan.Height run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:bounding_fan/","color":"gold"},{"text":"のHeight引数が不足しています。","color":"white"}]
    execute unless data storage lib: Argument.BoundingFan.Selector run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:bounding_fan/","color":"gold"},{"text":"のSelector引数が不足しています。","color":"white"}]

# 汎用エンティティを実行者にして計算
    execute as 0-0-0-0-0 run function lib:bounding_fan/core/calc
