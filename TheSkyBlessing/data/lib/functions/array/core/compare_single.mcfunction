#> lib:array/core/compare_single
# @within function
#   lib:array/**compare_single

# 比較/結果代入
    data modify storage lib: Array append value {_:{_:-1b}}
    execute store success score $Temp Temporary run data modify storage lib: CopiedArray[-1] set from storage lib: CompareTarget
    execute store success storage lib: Array[-1]._._ byte 1 if score $Temp Temporary matches 0
# 末尾削除
    data remove storage lib: CopiedArray[-1]
# 要素がまだあるなら再帰
    execute if data storage lib: CopiedArray[0] run function lib:array/core/compare_single