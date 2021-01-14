#> lib:array/core/shuffle
# @within function lib:array/**

execute store result score $Index Lib run function lib:random/
scoreboard players operation $Index Lib %= $ListSize Lib
execute if score $Index Lib matches 1.. run function lib:array/core/move
data modify storage lib: ArrayO append from storage lib: Array[-1]
data remove storage lib: Array[-1]
data modify storage lib: Array append from storage lib: Cache[]
function lib:array/core/force_delete_cache
scoreboard players remove $ListSize Lib 1
execute if score $ListSize Lib matches 1.. run function lib:array/core/shuffle