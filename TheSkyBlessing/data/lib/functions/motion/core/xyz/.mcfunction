#> lib:motion/core/xyz/
#
#
#
# @within function lib:motion/xyz

# KB耐性を乗算
    execute if data storage lib: Argument{KnockbackResist:1b} store result score $KnockbackResist Temporary run attribute @s generic.knockback_resistance get 100
    execute if data storage lib: Argument{KnockbackResist:1b} run function lib:motion/core/xyz/knockback_resistance

# ベクトルの大きさ（の2乗）を取得する
    function lib:array/session/open
    data modify storage lib: Array set from storage lib: Argument.Vector
    function lib:array/math/sqr
    data modify storage lib: Array set from storage lib: SqrResult
    function lib:array/math/sum
    execute store result score $VectorSquared Temporary run data get storage lib: SumResult 10000
    function lib:array/session/close

# 適用
    execute if entity @s[type=player] unless score $VectorSquared Temporary matches 0 run function lib:motion/core/xyz/player
    execute if entity @s[type=!player,tag=!Uninterferable] unless score $VectorSquared Temporary matches 0 run data modify entity @s Motion set from storage lib: Argument.Vector

# リセット
    scoreboard players reset $VectorSquared Temporary
    scoreboard players reset $KnockbackResist Temporary
