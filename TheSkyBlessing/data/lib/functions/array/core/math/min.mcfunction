#> lib:array/core/math/min
# @within function lib:array/**min

# 取得/計算
    execute if score $isNumeric Temporary matches 1 store result score $Temp Temporary run data get storage lib: Array[-1] 100
    execute if score $isNumeric Temporary matches 0 store result score $Temp Temporary run data get storage lib: Array[-1]
    scoreboard players operation $Min Temporary < $Temp Temporary
# 末尾削除
    data remove storage lib: Array[-1]
# 要素がまだあるなら再帰
    execute if data storage lib: Array[0] run function lib:array/core/math/min
