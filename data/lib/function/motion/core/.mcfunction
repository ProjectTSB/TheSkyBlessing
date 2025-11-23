#> lib:motion/core/
#
# Motionに関するメイン処理を行います
#
# @within function lib:motion/

#> private
# @private
    #declare score_holder $VectorMagnitude
    #declare score_holder $KnockbackResist

# 必要なデータ取得
    execute store result score $VectorMagnitude Temporary run data get storage lib: Argument.VectorMagnitude 100

# ノックバック耐性を計算する
    execute if data storage lib: Argument{KnockbackResist:1b} store result score $KnockbackResist Temporary run attribute @s generic.knockback_resistance get 100
    execute if data storage lib: Argument{KnockbackResist:1b} if score $KnockbackResist Temporary matches 1.. run function lib:motion/core/knockback_resistance

# 適用
    execute unless score $VectorMagnitude Temporary matches 0 run function lib:motion/core/apply

# リセット
    scoreboard players reset $KnockbackResist
    scoreboard players reset $VectorMagnitude