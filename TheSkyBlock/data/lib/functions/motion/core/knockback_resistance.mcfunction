#> lib:motion/core/knockback_resistance
#
#
#
# @within function lib:motion/core/apply
#> private
# @private
    #declare score_holder $VectorMagnitude
    #declare score_holder $KnockbackResist
    #declare score_holder $Calc

# ノックバック耐性を取得
    execute store result score $KnockbackResist Temporary run attribute @s generic.knockback_resistance get 100
# 100からノックバック耐性を引いた値を出す
    scoreboard players set $Calc Temporary 100
    scoreboard players operation $Calc Temporary -= $KnockbackResist Temporary
    scoreboard players operation $Calc Temporary >< $KnockbackResist Temporary
# $VectorMagnitudeの数値ととノックバック耐性をかける
    scoreboard players operation $VectorMagnitude Lib *= $KnockbackResist Temporary
# 100で割る
    scoreboard players operation $VectorMagnitude Lib /= $100 Const

# 計算用スコアホルダーをリセット
    scoreboard players reset $Calc