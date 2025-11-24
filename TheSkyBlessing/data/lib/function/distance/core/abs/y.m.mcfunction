#> lib:distance/core/abs/y
# @within function lib:distance/**

$data modify storage lib: Distance.tmp.Abs set value "$(Y)"
data modify storage lib: Distance.tmp.Y set string storage lib: Distance.tmp.Abs 1
