#> lib:array/core/reverse
# @within function lib:array/**

execute store result score $Index Temporary if data storage lib: Array[]
function lib:array/core/move
data modify storage lib: Array set from storage lib: Cache
data remove storage lib: Cache
scoreboard players reset $Index Temporary