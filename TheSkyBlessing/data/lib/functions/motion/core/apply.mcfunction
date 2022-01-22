#> lib:motion/core/apply
#
# Motionに関するメイン処理を行います
#
# @within function lib:motion/

#> private
# @private
    #declare score_holder $VectorMagnitude
    #declare score_holder $VectorX
    #declare score_holder $VectorY
    #declare score_holder $VectorZ
    #declare score_holder $KnockbackResist

# 初期化として視点を自分にあわせる & ^ ^ ^1を取得
    execute in overworld positioned 0.0 0.0 0.0 run tp 0-0-0-0-0 ^ ^ ^1

# 必要なデータ取得
    execute store result score $VectorMagnitude Temporary run data get storage lib: Argument.VectorMagnitude 100

# 演算処理
    data modify storage lib: Pos set from entity 0-0-0-0-0 Pos
    execute store result score $VectorX Temporary run data get storage lib: Pos[0] 1000
    execute store result score $VectorY Temporary run data get storage lib: Pos[1] 1000
    execute store result score $VectorZ Temporary run data get storage lib: Pos[2] 1000

# ノックバック耐性を計算する
    execute if data storage lib: Argument{KnockbackResist:1b} store result score $KnockbackResist Temporary run attribute @s generic.knockback_resistance get 100
    execute if data storage lib: Argument{KnockbackResist:1b} if score $KnockbackResist Temporary matches 1.. run function lib:motion/core/knockback_resistance

    scoreboard players operation $VectorX Temporary *= $VectorMagnitude Temporary
    scoreboard players operation $VectorY Temporary *= $VectorMagnitude Temporary
    scoreboard players operation $VectorZ Temporary *= $VectorMagnitude Temporary

# 適用
    execute store result storage lib: Pos[0] double 0.00001 run scoreboard players get $VectorX Temporary
    execute store result storage lib: Pos[1] double 0.00001 run scoreboard players get $VectorY Temporary
    execute store result storage lib: Pos[2] double 0.00001 run scoreboard players get $VectorZ Temporary
    data modify entity @s Motion set from storage lib: Pos

# リセット
    scoreboard players reset $VectorX Temporary
    scoreboard players reset $VectorY Temporary
    scoreboard players reset $VectorZ Temporary
    scoreboard players reset $KnockbackResist
    scoreboard players reset $VectorMagnitude
    data remove storage lib: Pos