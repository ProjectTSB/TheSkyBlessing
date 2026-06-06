#> lib:bounding_line/core/box/box2_back
#
# @within function lib:bounding_line/core/binary_search/*

# dxyzで判定
    execute positioned ~-1 ~-1 ~-1 rotated as 0-0-0-0-0 positioned ^ ^ ^-1.7320508075688772 if entity @s[dx=1,dy=1,dz=1] run return 1
