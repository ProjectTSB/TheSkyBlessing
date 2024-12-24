#> lib:distance/core/abs/y
# @internal

    $data modify storage lib: Distance.tmp.Abs set value "$(Y)"
    data modify storage lib: Distance.tmp.Y set string storage lib: Distance.tmp.Abs 1
