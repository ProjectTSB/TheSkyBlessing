#> lib:array/core/compare
# @within function
#   lib:array/**compare

# 比較/結果代入
    data modify storage lib: Array append value {_:{_:-1b}}
    execute store success score $Temp Temporary run data modify storage lib: ArrayA[-1] set from storage lib: ArrayB[-1]
    execute store success storage lib: Array[-1]._._ byte 1 if score $Temp Temporary matches 0
# 末尾削除
    data remove storage lib: ArrayA[-1]
    data remove storage lib: ArrayB[-1]
# 要素の数がずれていないかのチェック
    execute if data storage lib: ArrayA[0] unless data storage lib: ArrayB[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from lib:array/compare","color":"white"}]
    execute unless data storage lib: ArrayA[0] if data storage lib: ArrayB[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from lib:array/compare","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage lib: ArrayA[0] if data storage lib: ArrayB[0] run function lib:array/core/compare