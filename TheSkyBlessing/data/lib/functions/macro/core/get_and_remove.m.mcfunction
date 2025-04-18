#> lib:macro/core/get_and_remove.m
# @input args
#   Value: any
#   Source: Source
# @within function lib:macro/get_and_remove.m

$data remove $(Source)
data remove storage lib: Temp

$return $(Value)
