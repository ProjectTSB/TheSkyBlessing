#> lib:bounding_cone/core/detect.m
#
# @within function lib:bounding_cone/core/calc

# マクロと幾何学で判定
    $execute as $(Selector) facing entity @s feet positioned as @s positioned ^ ^ ^0.5 rotated as 0-0-0-0-0 positioned ^ ^ ^-0.5 if entity @s[distance=..$(Sin)] run tag @s add BoundingCone
