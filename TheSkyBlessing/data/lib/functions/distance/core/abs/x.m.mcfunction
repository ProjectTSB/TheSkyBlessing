#> lib:distance/core/abs/x.m
# @within function lib:distance/**

$data modify storage lib: Distance.tmp.Abs set value "$(X)"
data modify storage lib: Distance.tmp.X set string storage lib: Distance.tmp.Abs 1
