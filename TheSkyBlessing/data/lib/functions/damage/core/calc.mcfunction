#> lib:damage/core/calc
#
# 与えるダメージを計算します
#
# @within function lib:damage/core/attack

#> Temp
# @private
    #declare score_holder $CalcA
    #declare score_holder $CalcB
    #declare score_holder $CalcB2
    #declare score_holder $CalcB3
    #declare score_holder $CalcC
    #declare score_holder $CalcD
    #declare score_holder $CalcE
    #declare score_holder $CalcF
    #declare score_holder $CalcG

# 計算式:
# damage * (1 - min(20, max(defensePoints / 5, defensePoints - damage / (2 + toughness / 4))) / 25) * (1 - (min(20, cappedEPF) / 25)) * (1 - min(5, resistanceLv) / 5)

# 防御による軽減計算部
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
# エンチャントによる軽減計算部
    # $EPF(e2) = min(20, $EPF(e0)) * e2 / 50
        scoreboard players operation $EPF Temporary < $20 Const
        scoreboard players operation $EPF Temporary *= $2 Const
    # $CalcF(e2) = 1 * e2 - $EPF(e2)
        scoreboard players operation $CalcF Temporary = $100 Const
        scoreboard players operation $CalcF Temporary -= $EPF Temporary
    # $damage(e4) = $damage(e4) * $CalcF(e2) / e2
        scoreboard players operation $Damage Temporary *= $CalcF Temporary
        scoreboard players operation $Damage Temporary /= $100 Const
# 耐性エフェクトによる軽減計算部
    # $Resistance(e1) *= min(5, $Resistance(e0)) * e1 / 5
        scoreboard players operation $Resistance Temporary < $5 Const
        scoreboard players operation $Resistance Temporary *= $2 Const
    # $CalcF(e1) = 1 * e1 - $Resistance(e1)
        scoreboard players operation $CalcG Temporary = $10 Const
        scoreboard players operation $CalcG Temporary -= $Resistance Temporary
    # $damage(e4) = $damage(e4) * $CalcF(e1) / e1
        scoreboard players operation $Damage Temporary *= $CalcG Temporary
        scoreboard players operation $Damage Temporary /= $10 Const
# Reset
    scoreboard players reset $CalcA Temporary
    scoreboard players reset $CalcB Temporary
    scoreboard players reset $CalcB2 Temporary
    scoreboard players reset $CalcB3 Temporary
    scoreboard players reset $CalcC Temporary
    scoreboard players reset $CalcD Temporary
    scoreboard players reset $CalcE Temporary
    scoreboard players reset $CalcF Temporary
    scoreboard players reset $CalcG Temporary
    scoreboard players reset $defensePoints Temporary
    scoreboard players reset $toughness Temporary
    scoreboard players reset $EPF Temporary
    scoreboard players reset $Resistance Temporary