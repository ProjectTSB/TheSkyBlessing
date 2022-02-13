#> lib:array/core/compare
# @within function
#   lib:array/**compare

# 比較/結果代入
    data modify storage lib: CompareResult append value -1
    execute store success storage lib: CompareResult[-1] int 1 run data modify storage lib: Array[-1] set from storage lib: Array2[-1]
# 末尾削除
    data remove storage lib: Array[-1]
    data remove storage lib: Array2[-1]
# 要素の数がずれていないかのチェック
    execute if data storage global {IsProduction:0b} if data storage lib: Array[0] unless data storage lib: Array2[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from lib:array/compare","color":"white"}]
    execute if data storage global {IsProduction:0b} unless data storage lib: Array[0] if data storage lib: Array2[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from lib:array/compare","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage lib: Array[0] if data storage lib: Array2[0] run function lib:array/core/compare