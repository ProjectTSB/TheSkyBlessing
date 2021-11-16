#> asset:sacred_treasure/0745.blade_of_whirlwind/5.knockback
#
#
#
# @within function asset:sacred_treasure/0745.blade_of_whirlwind/3.main

# ノクバ耐性が0でない限り100から数値を引く
    execute unless score $MobKnockbackResist Temporary matches 0 store result score $MobKnockbackResist Temporary run scoreboard players operation $100 Const -= $MobKnockbackResist Temporary

# 移動速度上昇ないとバニラと同じくらいで悲しいので3ブロック分、走ってれば400
    scoreboard players add $VectorMagnitude Temporary 300
    execute if predicate lib:is_sprinting run scoreboard players add $VectorMagnitude Temporary 400
# $VectorMagnitudeの数値ととノクバ耐性を掛ける
    execute unless score $MobKnockbackResist Temporary matches 0 run scoreboard players operation $VectorMagnitude Lib *= $MobKnockbackResist Temporary

# これを5で割る
    execute unless score $MobKnockbackResist Temporary matches 0 run scoreboard players operation $VectorMagnitude Lib %= $5 Const

# 攻撃対象のMobをプレイヤーの向いてる方向にmotionで吹き飛ばす
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s rotated as @p[tag=this,distance=..6] rotated ~ ~-15 run function lib:motion/