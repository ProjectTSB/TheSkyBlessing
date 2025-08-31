#> lib:array/core/flat
# @within function lib:array/**flat

data modify storage lib: ArrayO append from storage lib: Array[-1][]
data remove storage lib: Array[-1]
execute if data storage lib: Array[-1] run function lib:array/core/flat
