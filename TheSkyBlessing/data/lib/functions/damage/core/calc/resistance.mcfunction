#> lib:damage/core/calc/resistance
#
# 耐性エフェクトによる軽減を計算します
#
# @within function lib:damage/core/calc/

#> Temp
# @private
#declare score_holder $Mul

# $Resistance(e1) *= min(5, $Resistance(e0)) * e1 / 5
    scoreboard players operation $Resistance Temporary < $5 Const
    scoreboard players operation $Resistance Temporary *= $2 Const
# $CalcF(e1) = 1 * e1 - $Resistance(e1)
    scoreboard players operation $Mul Temporary = $10 Const
    scoreboard players operation $Mul Temporary -= $Resistance Temporary
# $damage(e2) = $damage(e2) * $CalcF(e1) / e1
    scoreboard players operation $Damage Temporary *= $Mul Temporary
    scoreboard players operation $Damage Temporary /= $10 Const
# リセット
    scoreboard players reset $Mul Temporary