#> asset:sacred_treasure/0745.blade_of_whirlwind/trigger/5.knockback
#
#
#
# @within function asset:sacred_treasure/0745.blade_of_whirlwind/trigger/3.main

# こっちも補正無しの分の値を引く
    scoreboard players operation $VectorMagnitude Temporary -= $100 Const

# 補正の値を2倍する
    scoreboard players operation $VectorMagnitude Temporary *= $2 Const

# ノクバ最低値的な
    scoreboard players add $VectorMagnitude Temporary 180

# ノクバ耐性の計算
    execute if score $MobKnockbackResist Temporary matches 1..99 run function asset:sacred_treasure/0745.blade_of_whirlwind/trigger/6.knockback_resist

    execute store result storage lib: Argument.VectorMagnitude double 0.01 run scoreboard players get $VectorMagnitude Temporary
# 攻撃対象のMobをプレイヤーの向いてる方向にmotionで吹き飛ばす
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] at @s rotated as @p[tag=this,distance=..6] rotated ~ ~-15 run function lib:motion/
# 100スコアをリセット
    scoreboard players reset $KP.100 Temporary
