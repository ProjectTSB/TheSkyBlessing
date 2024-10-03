#> lib:array/core/shuffle
# @within function lib:array/**

execute store result score $Index Temporary run function lib:random/
scoreboard players operation $Index Temporary %= $ListSize Lib
execute if score $Index Temporary matches 1.. run function lib:array/core/move
data modify storage lib: ArrayO append from storage lib: Array[-1]
data remove storage lib: Array[-1]
data modify storage lib: Array append from storage lib: Cache[]
data remove storage lib: Cache
scoreboard players remove $ListSize Lib 1
execute if score $ListSize Lib matches 1.. run function lib:array/core/shuffle
