#> lib:motion/xyz
#
# 実行者に指定されたベクトル（xyz成分）のMotionを付与します。
#
# ※いずれかのMotionが10以上の場合、Minecraftの仕様上正常に動作しません。
#
# @input
#   as entity
#   storage lib:
#       Argument.KnockbackResist?: boolean
#       Argument.Vector: double @ 3
# @api

# 引数を設定
    execute unless data storage lib: Argument.KnockbackResist run data modify storage lib: Argument.KnockbackResist set value 0b

# 実行
    function lib:motion/core/xyz/

# リセット
    data remove storage lib: Argument.KnockbackResist
    data remove storage lib: Argument.Vector
