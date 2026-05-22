#> lib:motion/looking
#
# 実行座標の前方にlib: Argument.VectorMagnitudeの大きさのMotionを付与します。
#
# ※いずれかのMotionが10以上の場合Minecraftの仕様上正常に動作しません。
#
# @input
#   as entity
#   storage lib:
#       Argument.KnockbackResist?: boolean
#       Argument.VectorMagnitude: double
# @api

# 引数を設定
    execute unless data storage lib: Argument.KnockbackResist run data modify storage lib: Argument.KnockbackResist set value 0b

# 実行
    function lib:motion/core/looking/

# リセット
    data remove storage lib: Argument.KnockbackResist
    data remove storage lib: Argument.VectorMagnitude
