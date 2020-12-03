#> lib:damage/core/calc
#
# 与えるダメージを計算します
#
# @within function lib:damage/core/attack

# 計算式:
# damage * (1 - min(20, max(defensePoints / 5, defensePoints - damage / (2 + toughness / 4))) / 25) * (1 - (min(20, cappedEPF) / 25)) * (1 - min(5, resistanceLv) / 5)

# 防御による軽減計算部
    # $CalcA = $defensePoints( * 100) * 100 / 5 / 100;
        scoreboard players operation $CalcA Temporary = $defensePoints Temporary
        scoreboard players operation $CalcA Temporary *= $20 Const
        scoreboard players operation $CalcA Temporary /= $100 Const
    # $CalcB.3 = $toughness( * 100) * 100 / 4 + 2 * 100 * 100;
        scoreboard players operation $CalcB.3 Temporary = $toughness Temporary
        scoreboard players operation $CalcB.3 Temporary *= $25 Const
        scoreboard players operation $CalcB.3 Temporary += $20000 Const
    # $CalcB.2 = $damage( * 100) * 100 * 100 / $CalcB.3( * 100 * 100);
        scoreboard players operation $CalcB.2 Temporary = $Damage Temporary
        scoreboard players operation $CalcB.2 Temporary *= $10000 Const
        scoreboard players operation $CalcB.2 Temporary /= $CalcB.3 Temporary
    # $CalcB = $defensePoints( * 100) - $CalcB.2( * 100);
        scoreboard players operation $CalcB Temporary = $defensePoints Temporary
        scoreboard players operation $CalcB Temporary -= $CalcB.2 Temporary
    # $CalcC = min(max($CalcA( * 100), $CalcB( * 100)), 20 * 100) * 100 / 25;
        scoreboard players operation $CalcC Temporary = $CalcA Temporary
        scoreboard players operation $CalcC Temporary > $CalcB Temporary
        scoreboard players operation $CalcC Temporary < $2000 Const
        scoreboard players operation $CalcC Temporary *= $4 Const
    # $CalcD = (1 * 100 * 100 - $CalcC( * 100 * 100)) / 10;
        scoreboard players operation $CalcD Temporary = $10000 Const
        scoreboard players operation $CalcD Temporary -= $CalcC Temporary
        scoreboard players operation $CalcD Temporary /= $10 Const
    # $damage = $damage( * 100) * $CalcD( * 100 * 10) / 10;
        scoreboard players operation $Damage Temporary *= $CalcD Temporary
        scoreboard players operation $Damage Temporary /= $10 Const
# エンチャントによる軽減計算部
    # $EPF = min(20, $EPF) / 100 / 25
        scoreboard players operation $EPF Temporary < $20 Const
        scoreboard players operation $EPF Temporary *= $4 Const
    # $CalcE = 1 * 100 - $EPF( * 100)
        scoreboard players operation $CalcE Temporary = $100 Const
        scoreboard players operation $CalcE Temporary -= $EPF Temporary
    # $damage = $damage( * 100 * 100) * $CalcE( * 100) / 100
        scoreboard players operation $Damage Temporary *= $CalcE Temporary
        scoreboard players operation $Damage Temporary /= $100 Const
# 耐性エフェクトによる軽減計算部
    # $Resistance *= min(5, $Resistance) * 10 / 5
        scoreboard players operation $Resistance Temporary < $5 Const
        scoreboard players operation $Resistance Temporary *= $2 Const
    # $CalcF = 1 * 10 - $Resistance( * 10)
        scoreboard players operation $CalcF Temporary = $10 Const
        scoreboard players operation $CalcF Temporary -= $Resistance Temporary
    # $damage = $damage( * 100 * 100) * $CalcF( * 10) / 10
        scoreboard players operation $Damage Temporary *= $CalcF Temporary
        scoreboard players operation $Damage Temporary /= $10 Const
# Reset
    scoreboard players reset $CalcA
    scoreboard players reset $CalcB
    scoreboard players reset $CalcB.2
    scoreboard players reset $CalcB.3
    scoreboard players reset $CalcC
    scoreboard players reset $CalcD
    scoreboard players reset $CalcE
    scoreboard players reset $CalcF
    scoreboard players reset $defensePoints
    scoreboard players reset $toughness
    scoreboard players reset $EPF
    scoreboard players reset $Resistance