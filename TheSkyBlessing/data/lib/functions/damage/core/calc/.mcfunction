#> lib:damage/core/calc/
#
# 与えるダメージを計算します
#
# @within function lib:damage/core/attack

#> Temp
# @private
#declare score_holder $isDefenseCalcSkip

# 計算式:
# damage * (1 - min(20, max(defensePoints / 5, defensePoints - damage / (2 + toughness / 4))) / 25) * (1 - (min(20, cappedEPF) / 25)) * (1 - min(5, resistanceLv) / 5)

# 計算的なダメージ上限(21474.83)チェック
    execute if score $Damage Temporary matches 2147483.. run scoreboard players set $Damage Temporary 2147483
# エンチャントによる軽減計算部
    execute if score $EPF Temporary matches 1.. run function lib:damage/core/calc/enchantment
# 耐性エフェクトによる軽減計算部
    execute if score $Resistance Temporary matches 1.. run function lib:damage/core/calc/resistance
# 防御による軽減計算部
    execute if score $defensePoints Temporary matches 0 if score $toughness Temporary matches 0 run scoreboard players set $isDefenseCalcSkip Temporary 1
    execute unless score $isDefenseCalcSkip Temporary matches 1 run function lib:damage/core/calc/defense
    execute if score $isDefenseCalcSkip Temporary matches 1 run scoreboard players operation $Damage Temporary *= $100 Const
# システム的なダメージ上限(9999.99/99999999(e4))チェック
    execute if score $Damage Temporary matches 99999000.. run scoreboard players set $Damage Temporary 99999000
# Reset
    scoreboard players reset $isDefenseCalcSkip Temporary
    scoreboard players reset $defensePoints Temporary
    scoreboard players reset $toughness Temporary
    scoreboard players reset $EPF Temporary
    scoreboard players reset $Resistance Temporary