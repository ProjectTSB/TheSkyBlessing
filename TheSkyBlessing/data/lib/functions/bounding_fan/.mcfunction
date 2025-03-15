#> lib:bounding_fan/
#
# 厚みを持った扇形の範囲にいるエンティティにタグを付与する
#
# @input args
#   position: 実行位置
#       扇型の中心角、厚みの中心
#   rotation: 実行向き
#       中心角から見て扇形が広がる方向
#   Angle: double
#       扇形の中心角度
#   Radius: double
#       扇形の半径
#   Height: double
#       範囲の厚み
#   Selector: string
#       検索対象のセレクタ
#
# @output tag BFan
#
# @api
#
#> return
# @api
    #declare tag BFan


# 汎用エンティティを実行者にして計算
    execute as 0-0-0-0-0 run function lib:bounding_fan/core/calc
