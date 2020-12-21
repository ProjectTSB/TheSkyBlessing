#> lib:array/core/shuffle
# @within function lib:array/**

function lib:random/
scoreboard players operation $Index Arguments = $Return.Random Arguments
scoreboard players operation $Index Arguments %= $ListSize Arguments
execute if score $Index Arguments matches 1.. run function lib:array/core/move
data modify storage lib: ArrayO append from storage lib: Array[-1]
data remove storage lib: Array[-1]
data modify storage lib: Array append from storage lib: Cache[]
function lib:array/core/force_delete_cache
scoreboard players remove $ListSize Arguments 1
execute if score $ListSize Arguments matches 1.. run function lib:array/core/shuffle