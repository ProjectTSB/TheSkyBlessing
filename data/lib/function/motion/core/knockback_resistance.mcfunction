#> lib:motion/core/knockback_resistance
#
#
#
# @within function lib:motion/core/

#> private
# @private
#declare score_holder $Calc

# 100からノックバック耐性を引いた値を出す
    scoreboard players set $Calc Temporary 100
    scoreboard players operation $Calc Temporary -= $KnockbackResist Temporary
    scoreboard players operation $Calc Temporary >< $KnockbackResist Temporary
# $VectorMagnitudeの数値ととノックバック耐性をかける
    scoreboard players operation $VectorMagnitude Temporary *= $KnockbackResist Temporary
# 100で割る
    scoreboard players operation $VectorMagnitude Temporary /= $100 Const

# 計算用スコアホルダーをリセット
    scoreboard players reset $Calc