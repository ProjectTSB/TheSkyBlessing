#> lib:array/core/move
# @within function lib:array/**

scoreboard players remove $Index Temporary 1
data modify storage lib: Cache append from storage lib: Array[-1]
data remove storage lib: Array[-1]
execute if score $Index Temporary matches 1.. run function lib:array/core/move