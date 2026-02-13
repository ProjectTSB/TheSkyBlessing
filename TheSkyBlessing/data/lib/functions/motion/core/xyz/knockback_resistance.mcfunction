#> lib:motion/core/xyz/knockback_resistance
#
#
#
# @within function lib:motion/core/xyz/

# セッションを開ける
    function lib:array/session/open
# 値を取得
    data modify storage lib: Array set from storage lib: Argument.Vector
    scoreboard players remove $KnockbackResist Temporary 100
    scoreboard players operation $KnockbackResist Temporary *= $-1 Const
    execute store result storage lib: Mul double 0.01 run scoreboard players get $KnockbackResist Temporary
# 計算
    function lib:array/math/scalar_multiply
# 結果を代入
    data modify storage lib: Argument.Vector set from storage lib: MulResult
# セッションを閉じる
    function lib:array/session/close
