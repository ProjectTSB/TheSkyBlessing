#> lib:array/core/sum
# @within function lib:array/**sum

# 取得/計算
    execute store result score $Temp Temporary run data get storage lib: Array[-1]
    scoreboard players operation $Sum Temporary += $Temp Temporary
# 末尾削除
    data remove storage lib: Array[-1]
# 要素がまだあるなら再帰
    execute if data storage lib: Array[0] run function lib:array/core/sum