#> lib:distance/core/abs/z
# @within function lib:distance/**

$data modify storage lib: Distance.tmp.Abs set value "$(Z)"
data modify storage lib: Distance.tmp.Z set string storage lib: Distance.tmp.Abs 1
