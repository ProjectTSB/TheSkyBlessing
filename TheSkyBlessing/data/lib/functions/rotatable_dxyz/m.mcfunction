#> lib:rotatable_dxyz/m
#
# 回転可能なdx,dy,dz判定
# 実行位置を"中央とする"直方体範囲内の検索対象にタグを付与する
#
# @input args
#   position: 実行位置
#       直方体の中心
#   rotation: 実行向き
#       直方体の座標系
#   dx: double
#       中央からX方向の面までの距離
#   dy: double
#       中央からY方向の面までの距離
#   dz: double
#       中央からZ方向の面までの距離
#   selector: string
#       検索対象のセレクタ
#
# @output tag DXYZ
#
# @api
#
#> return
# @api
    #declare tag DXYZ

# 汎用エンティティを実行位置・向きにtp
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 ~ ~

# 各エンティティにファンクション実行
    $execute as $(selector) positioned ^$(dx) ^$(dy) ^$(dz) if function lib:rotatable_dxyz/core/each_plus positioned ^-$(dx) ^-$(dy) ^-$(dz) positioned ^-$(dx) ^-$(dy) ^-$(dz) if function lib:rotatable_dxyz/core/each_minus run tag @s add DXYZ

# 汎用エンティティを原点にtp
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 0.0 0.0
