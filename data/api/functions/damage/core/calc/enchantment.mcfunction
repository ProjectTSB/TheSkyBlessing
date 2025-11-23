#> api:damage/core/calc/enchantment
#
# エンチャントによる軽減を計算します
#
# @within function api:damage/core/calc/

#> Temp
# @private
    #declare score_holder $CalcF
    #declare score_holder $CalcG

# $EPF(e2) = min(20, $EPF(e0)) * e2 / 50
    scoreboard players operation $EPF Temporary < $20 Const
    scoreboard players operation $EPF Temporary *= $2 Const
# $CalcF(e2) = 1 * e2 - $EPF(e2)
    scoreboard players operation $CalcF Temporary = $100 Const
    scoreboard players operation $CalcF Temporary -= $EPF Temporary
# $damage(e4) = $damage(e4) * $CalcF(e2) / e2
    scoreboard players operation $CalcG Temporary = $Damage Temporary
    execute if score $Damage Temporary matches 10000000.. run scoreboard players operation $CalcG Temporary /= $10 Const
    scoreboard players operation $CalcG Temporary *= $CalcF Temporary
    execute if score $Damage Temporary matches ..9999999 run scoreboard players operation $CalcG Temporary /= $100 Const
    execute if score $Damage Temporary matches 10000000.. run scoreboard players operation $CalcG Temporary /= $10 Const
    scoreboard players operation $Damage Temporary = $CalcG Temporary
# リセット
    scoreboard players reset $CalcF Temporary
    scoreboard players reset $CalcG Temporary
