#> lib:array/core/merge
# @within function lib:array/**merge


# 結合
    data modify storage lib: Array append from storage lib: ArrayA[-1]
    data modify storage lib: Array[-1] merge from storage lib: ArrayB[-1]
# 末尾削除
    data remove storage lib: ArrayA[-1]
    data remove storage lib: ArrayB[-1]
# 要素の数がずれていないかのチェック
    execute if data storage lib: ArrayA[0] unless data storage lib: ArrayB[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from lib:array/merge","color":"white"}]
    execute unless data storage lib: ArrayA[0] if data storage lib: ArrayB[0] run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"リストの要素の数が異なります。 / from lib:array/merge","color":"white"}]
# 要素がまだあるなら再帰
    execute if data storage lib: ArrayA[0] if data storage lib: ArrayB[0] run function lib:array/core/merge