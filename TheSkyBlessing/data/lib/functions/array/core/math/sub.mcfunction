#> lib:array/core/math/sub
# @within function
#   lib:array/math/sub
#   lib:array/core/math/sub

# 加算
    data modify storage lib: Array append value -1d
    execute store result score $Temp Temporary run data get storage lib: ArrayA[-1] 1000
    execute store result score $Temp2 Temporary run data get storage lib: ArrayB[-1] 1000
    scoreboard players operation $Temp Temporary -= $Temp2 Temporary
    execute store result storage lib: Array[-1] double 0.001 run scoreboard players get $Temp Temporary
# 末尾削除
    data remove storage lib: ArrayA[-1]
    data remove storage lib: ArrayB[-1]
# 要素の数がずれていないかのチェック
    execute if data storage lib: ArrayA[0] unless data storage lib: ArrayB[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from lib:array/math/sub","color":"white"}]
    execute unless data storage lib: ArrayA[0] if data storage lib: ArrayB[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from lib:array/math/sub","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage lib: ArrayA[0] if data storage lib: ArrayB[0] run function lib:array/core/math/sub