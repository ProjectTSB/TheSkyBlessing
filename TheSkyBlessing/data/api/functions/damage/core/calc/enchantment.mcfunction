#> api:damage/core/calc/enchantment
#
# エンチャントによる軽減を計算します
#
# @within function api:damage/core/calc/

#> Temp
# @private
#declare score_holder $Mul

# $EPF(e2) = min(20, $EPF(e0)) * e2 / 50
    scoreboard players operation $EPF Temporary < $20 Const
    scoreboard players operation $EPF Temporary *= $2 Const
# $CalcF(e2) = 1 * e2 - $EPF(e2)
    scoreboard players operation $Mul Temporary = $100 Const
    scoreboard players operation $Mul Temporary -= $EPF Temporary
# $damage(e2) = $damage(e2) * $CalcF(e2) / e2
    scoreboard players operation $Damage Temporary *= $Mul Temporary
    scoreboard players operation $Damage Temporary /= $100 Const
# リセット
    scoreboard players reset $Mul Temporary