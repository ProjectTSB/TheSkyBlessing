#> entity_manager:damage.calc
#
# 与えるダメージを計算します
#
# @within function entity_manager:damage

#> Temp
# @private
    #declare score_holder $CalcA
    #declare score_holder $CalcB
    #declare score_holder $CalcB.2
    #declare score_holder $CalcB.3
    #declare score_holder $CalcC
    #declare score_holder $CalcD
    #declare score_holder $CalcE
    #declare score_holder $CalcF

# 防御による軽減計算部
    # CalcA = $ArmorPoints / 20
        scoreboard players operation $CalcA Temporary = $ArmorPoints Temporary
        scoreboard players operation $CalcA Temporary /= $20 Const
    # CalcB = $ArmorPoints * 100 - {$Damage * 100 / {(2 * 100 + {$ArmorToughnessPoints * 100 / 4})}}
        scoreboard players operation $CalcB.3 Temporary = $ArmorToughnessPoints Temporary
        scoreboard players operation $CalcB.3 Temporary /= $4 Const
        scoreboard players operation $CalcB.3 Temporary += $200 Const

        scoreboard players operation $CalcB.2 Temporary = $Damage Temporary
        scoreboard players operation $CalcB.2 Temporary *= $100 Const
        scoreboard players operation $CalcB.2 Temporary /= $CalcB.3 Temporary

        scoreboard players operation $CalcB Temporary = $ArmorPoints Temporary
        scoreboard players operation $CalcB Temporary -= $CalcB.2 Temporary
    # $CalcC = $min(20*100, max($CalcA, $CalcB)) * 100 / 25
        scoreboard players operation $CalcC Temporary = $CalcA Temporary
        scoreboard players operation $CalcC Temporary > $CalcB Temporary
        scoreboard players operation $CalcC Temporary < $2000 Const
        scoreboard players operation $CalcC Temporary *= $4 Const
    # $CalcD = 1 * 100 * 100 - $CalcC
        scoreboard players operation $CalcD Temporary = $10000 Const
        scoreboard players operation $CalcD Temporary -= $CalcC Temporary
    # $Damage *= $CalcD
        scoreboard players operation $Damage Temporary *= $CalcD Temporary
        scoreboard players operation $Damage Temporary /= $100 Const
# エンチャントによる軽減計算部
    # $EPF = min(20 * 100, $EPF * 100 / 25)
        scoreboard players operation $EPF Temporary *= $4 Const
        scoreboard players operation $EPF Temporary < $200 Const
    # $CalcE = 1 * 100 - $EPF
        scoreboard players operation $CalcE Temporary = $100 Const
        scoreboard players operation $CalcE Temporary -= $EPF Temporary
    # $Damage *= $CalcE
        scoreboard players operation $Damage Temporary *= $CalcE Temporary
        scoreboard players operation $Damage Temporary /= $100 Const
# 耐性エフェクトによる軽減計算部
    # $Resistance *= min(5, $Resistance) * 10 / 5
        scoreboard players operation $Resistance Temporary *= $2 Const
        scoreboard players operation $Resistance Temporary < $10 Const
    # $CalcF = 1 * 10 - $Resistance
        scoreboard players operation $CalcF Temporary = $10 Const
        scoreboard players operation $CalcF Temporary -= $Resistance Temporary
    # $Damage *= $CalcF
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
    scoreboard players reset $ArmorPoints
    scoreboard players reset $ArmorToughnessPoints
    scoreboard players reset $EPF
    scoreboard players reset $Resistance