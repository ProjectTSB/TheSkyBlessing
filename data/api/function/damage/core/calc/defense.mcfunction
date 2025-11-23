#> api:damage/core/calc/defense
#
# 防御による軽減を計算します
#
# @within function api:damage/core/calc/

#> Temp
# @private
    #declare score_holder $CalcA
    #declare score_holder $CalcB
    #declare score_holder $CalcB2
    #declare score_holder $CalcB3
    #declare score_holder $CalcC
    #declare score_holder $CalcD
    #declare score_holder $CalcE

# $CalcA(e2) = $defensePoints(e2) * e2 / 5 / e2
    scoreboard players operation $CalcA Temporary = $defensePoints Temporary
    scoreboard players operation $CalcA Temporary *= $20 Const
    scoreboard players operation $CalcA Temporary /= $100 Const
# $CalcB3(e2) = $toughness(e2) * e2 / 4 / e2 + 2 * e2  : $damage >= 1000 * e2
# $CalcB3(e4) = $toughness(e2) * e2 / 4      + 2 * e4  : $damage  < 1000 * e2
    scoreboard players operation $CalcB3 Temporary = $toughness Temporary
    scoreboard players operation $CalcB3 Temporary *= $25 Const
    execute if score $Damage Temporary matches 100000.. run scoreboard players operation $CalcB3 Temporary /= $100 Const
    execute if score $Damage Temporary matches 100000.. run scoreboard players operation $CalcB3 Temporary += $200 Const
    execute if score $Damage Temporary matches ..099999 run scoreboard players operation $CalcB3 Temporary += $20000 Const
# $CalcB2(e2) = $damage(e2) * e2 / $CalcB3(e2)  : $damage >= 1000 * e2
# $CalcB2(e2) = $damage(e2) * e4 / $CalcB3(e4)  : $damage  < 1000 * e2
    scoreboard players operation $CalcB2 Temporary = $Damage Temporary
    execute if score $Damage Temporary matches 100000.. run scoreboard players operation $CalcB2 Temporary *= $100 Const
    execute if score $Damage Temporary matches ..099999 run scoreboard players operation $CalcB2 Temporary *= $10000 Const
    scoreboard players operation $CalcB2 Temporary /= $CalcB3 Temporary
# $CalcB(e2) = $defensePoints(e2) - $CalcB2(e2)
    scoreboard players operation $CalcB Temporary = $defensePoints Temporary
    scoreboard players operation $CalcB Temporary -= $CalcB2 Temporary
# $CalcC(e4) = min(max($CalcA(e2), $CalcB(e2)), 20 * e2) * e2 / 25
    scoreboard players operation $CalcC Temporary = $CalcA Temporary
    scoreboard players operation $CalcC Temporary > $CalcB Temporary
    scoreboard players operation $CalcC Temporary < $2000 Const
    scoreboard players operation $CalcC Temporary *= $4 Const
# $CalcD(e3) = (1 * e4 - $CalcC(e4)) / e1  : $damage >= 1000 * e2
# $CalcD(e4) = (1 * e4 - $CalcC(e4))       : $damage  < 1000 * e2
    scoreboard players operation $CalcD Temporary = $10000 Const
    scoreboard players operation $CalcD Temporary -= $CalcC Temporary
    execute if score $Damage Temporary matches 100000.. run scoreboard players operation $CalcD Temporary /= $10 Const
# $damage(e4) = $damage(e2) * $CalcD(e3) / e1  : $damage >= 1000 * e2
# $damage(e4) = $damage(e2) * $CalcD(e4) / e2  : $damage  < 1000 * e2
    scoreboard players operation $CalcE Temporary = $Damage Temporary
    scoreboard players operation $CalcE Temporary *= $CalcD Temporary
    execute if score $Damage Temporary matches 100000.. run scoreboard players operation $CalcE Temporary /= $10 Const
    execute if score $Damage Temporary matches ..099999 run scoreboard players operation $CalcE Temporary /= $100 Const
    scoreboard players operation $Damage Temporary = $CalcE Temporary
# リセット
    scoreboard players reset $CalcA Temporary
    scoreboard players reset $CalcB Temporary
    scoreboard players reset $CalcB2 Temporary
    scoreboard players reset $CalcB3 Temporary
    scoreboard players reset $CalcC Temporary
    scoreboard players reset $CalcD Temporary
    scoreboard players reset $CalcE Temporary