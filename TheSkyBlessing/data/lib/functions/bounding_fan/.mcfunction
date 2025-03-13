#> lib:bounding_fan/
#
# 厚みを持った扇形の範囲にいるエンティティにタグを付与する
#
# @input args
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
    # execute as 0-0-0-0-0 unless function lib:bounding_fan/core/calc run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"bounding_fanの実行が失敗しました","color":"white"}]

# 汎用エンティティをリセット
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 0.0 0.0

# ストレージ掃除
    data remove storage lib: BFan
    data remove storage lib: Argument.BFan
