#> lib:bounding_line/core/box/box1_front
#
# @within function lib:bounding_line/core/binary_search/*

# dxyzで判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 rotated as 0-0-0-0-0 positioned ^ ^ ^0.8660254037844386 if entity @s[dx=0,dy=0,dz=0] run return 1
