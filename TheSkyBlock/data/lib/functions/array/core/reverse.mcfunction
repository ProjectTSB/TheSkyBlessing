#> lib:array/core/reverse
# @within function lib:array/**

execute store result score $Index Lib if data storage lib: Array[]
function lib:array/core/move
data modify storage lib: Array set from storage lib: Cache
function lib:array/core/force_delete_cache