#> lib:array/core/shuffle
# @within function lib:array/**

function lib:random/
scoreboard players operation $Index Argument = $Return.Random Argument
scoreboard players operation $Index Argument %= $ListSize Argument
execute if score $Index Argument matches 1.. run function lib:array/core/move
data modify storage lib: ArrayO append from storage lib: Array[-1]
data remove storage lib: Array[-1]
data modify storage lib: Array append from storage lib: Cache[]
function lib:array/core/force_delete_cache
scoreboard players remove $ListSize Argument 1
execute if score $ListSize Argument matches 1.. run function lib:array/core/shuffle