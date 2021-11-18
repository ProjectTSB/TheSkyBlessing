#> asset:sacred_treasure/0745.blade_of_whirlwind/5.knockback
#
#
#
# @within function asset:sacred_treasure/0745.blade_of_whirlwind/3.main

# Constではない100を設定
    scoreboard players set $KP.100 Temporary 100

# ノクバ耐性が0でない限り100から数値を引く
    execute if score $MobKnockbackResist Temporary matches 1..99 store result score $MobKnockbackResist Temporary run scoreboard players operation $KP.100 Const -= $MobKnockbackResist Temporary

# 移動速度上昇ないとバニラと同じくらいで悲しいので
    scoreboard players add $VectorMagnitude Lib 75

# $VectorMagnitudeの数値ととノクバ耐性を掛ける
    execute if score $MobKnockbackResist Temporary matches 1..99 run scoreboard players operation $VectorMagnitude Lib *= $MobKnockbackResist Temporary

# これを5で割る
    execute if score $MobKnockbackResist Temporary matches 1..99 run scoreboard players operation $VectorMagnitude Lib %= $5 Const
           tellraw @p [{"text":"VectorMagnitude "},{"score":{"name":"$VectorMagnitude","objective":"Lib"}}]
# 攻撃対象のMobをプレイヤーの向いてる方向にmotionで吹き飛ばす
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s rotated as @p[tag=this,distance=..6] rotated ~ ~-15 run function lib:motion/

# 100スコアをリセット
    scoreboard players reset $KP.100 Temporary