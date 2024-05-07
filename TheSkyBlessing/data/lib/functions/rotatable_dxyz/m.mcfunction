#> lib:rotatable_dxyz/m
#
# 回転可能なdx,dy,dz判定
# 実行位置を"中央とする"直方体範囲内の検索対象にタグを付与する
#
# @input args
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
#
#> temp
# @within function lib:rotatable_dxyz/**
    #declare entity 8c6c3500-0ec4-4556-b818-24046a8a1352


# 実行位置が読み込まれていなかったら失敗
    execute unless loaded ~ ~ ~ run return fail

# 一時エンティティ召喚＆実行方向に向ける
    summon marker ~ ~ ~ {UUID:[I; -1939065600, 247743830, -1206377468, 1787433810]}
    tp 8c6c3500-0ec4-4556-b818-24046a8a1352 ~ ~ ~ ~ ~

# 各エンティティにファンクション実行
    $execute as $(selector) positioned ^$(dx) ^$(dy) ^$(dz) if function lib:rotatable_dxyz/core/each_plus at 8c6c3500-0ec4-4556-b818-24046a8a1352 positioned ^-$(dx) ^-$(dy) ^-$(dz) if function lib:rotatable_dxyz/core/each_minus run tag @s add DXYZ

# 一時エンティティ削除
    kill 8c6c3500-0ec4-4556-b818-24046a8a1352
