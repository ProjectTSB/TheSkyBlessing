#> api:damage/core/calc/defense
#
# 防御による軽減を計算します
#
# @within function api:damage/core/calc/

#> Temp
# @private
    #declare score_holder $CalcA
    #declare score_holder $CalcB
    #declare score_holder $CalcB1
    #declare score_holder $CalcB2
    #declare score_holder $CalcC
    #declare score_holder $CalcD
    #declare score_holder $CalcE

# $CalcA(e2) = $defensePoints(e2) / 5
    scoreboard players operation $CalcA Temporary = $defensePoints Temporary
    scoreboard players operation $CalcA Temporary /= $5 Const
# $CalcB1(e4) = 2 * e4 + $toughness(e2) * e2 / 4
    scoreboard players operation $CalcB1 Temporary = $toughness Temporary
    scoreboard players operation $CalcB1 Temporary *= $25 Const
    scoreboard players add $CalcB1 Temporary 20000
# $CalcB2(e2) = $Damage(e2) * e4 / $CalcB1(e4)
#             = ($Damage / $CalcB1) * e4 + ($Damage % $CalcB1) * e4 / $CalcB1  : オーバーフロー回避
    scoreboard players operation $CalcB2 Temporary = $Damage Temporary
    scoreboard players operation $CalcB2 Temporary /= $CalcB1 Temporary
    scoreboard players operation $CalcB2 Temporary *= $10000 Const
    scoreboard players operation $CalcE Temporary = $Damage Temporary
    scoreboard players operation $CalcE Temporary %= $CalcB1 Temporary
    scoreboard players operation $CalcE Temporary *= $10000 Const
    scoreboard players operation $CalcE Temporary /= $CalcB1 Temporary
    scoreboard players operation $CalcB2 Temporary += $CalcE Temporary
# $CalcB(e2) = $defensePoints(e2) - $CalcB2(e2)
    scoreboard players operation $CalcB Temporary = $defensePoints Temporary
    scoreboard players operation $CalcB Temporary -= $CalcB2 Temporary
# $CalcC(e4) = min(max($CalcA(e2), $CalcB(e2)), 20 * e2) * e2 / 25
    scoreboard players operation $CalcC Temporary = $CalcA Temporary
    scoreboard players operation $CalcC Temporary > $CalcB Temporary
    scoreboard players operation $CalcC Temporary < $2000 Const
    scoreboard players operation $CalcC Temporary *= $4 Const
# $CalcD(e4) = 1 * e4 - $CalcC(e4)
    scoreboard players set $CalcD Temporary 10000
    scoreboard players operation $CalcD Temporary -= $CalcC Temporary
# $Damage(e4) = $Damage(e2) * $CalcD(e4) / e2
#             = ($Damage / e2) * $CalcD + ($Damage % e2) * $CalcD / e2  : オーバーフロー回避
    scoreboard players operation $CalcE Temporary = $Damage Temporary
    scoreboard players operation $CalcE Temporary %= $100 Const
    scoreboard players operation $CalcE Temporary *= $CalcD Temporary
    scoreboard players operation $CalcE Temporary /= $100 Const
    scoreboard players operation $Damage Temporary /= $100 Const
    scoreboard players operation $Damage Temporary *= $CalcD Temporary
    scoreboard players operation $Damage Temporary += $CalcE Temporary
# リセット
    scoreboard players reset $CalcA Temporary
    scoreboard players reset $CalcB Temporary
    scoreboard players reset $CalcB1 Temporary
    scoreboard players reset $CalcB2 Temporary
    scoreboard players reset $CalcC Temporary
    scoreboard players reset $CalcD Temporary
    scoreboard players reset $CalcE Temporary
