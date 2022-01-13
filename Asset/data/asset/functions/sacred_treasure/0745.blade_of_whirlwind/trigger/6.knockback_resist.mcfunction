#> asset:sacred_treasure/0745.blade_of_whirlwind/trigger/6.knockback_resist
#
#
#
# @within function asset:sacred_treasure/0745.blade_of_whirlwind/trigger/5.knockback

# Constではない100を設定
    scoreboard players set $KP.100 Temporary 100

# 100から数値を引く
    execute if score $MobKnockbackResist Temporary matches 1..99 store result score $MobKnockbackResist Temporary run scoreboard players operation $KP.100 Temporary -= $MobKnockbackResist Temporary

# $VectorMagnitudeの数値ととノクバ耐性を掛ける
    scoreboard players operation $VectorMagnitude Temporary *= $MobKnockbackResist Temporary

# 100で割る
    scoreboard players operation $VectorMagnitude Temporary /= $100 Const

# 100スコアをリセット
    scoreboard players reset $KP.100 Temporary