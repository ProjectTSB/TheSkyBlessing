#> lib:array/shuffle
#
# 配列の要素をシャッフルします
#
# @input
#   storage lib: Array: any[]
#   配列データ
# @output
#   storage lib: Array: any[]
#   ランダムな順の配列
# @api

execute store result score $ListSize Lib if data storage lib: Array[]
data modify storage lib: ArrayO set value []
function lib:array/core/shuffle
data modify storage lib: Array set from storage lib: ArrayO
data remove storage lib: ArrayO