#> lib:bounding_fan/core/detect.m
#
# @within function lib:bounding_fan/core/calc

# マクロと幾何学で判定
    $execute as $(Selector) at @s positioned $(PosX) ~ $(PosZ) at @s[distance=..$(Radius)] positioned ~ $(PosY) ~ positioned ~ ~$(HeightHalf) ~ at @s[distance=..$(HeightHalf)] facing $(PosX) ~ $(PosZ) positioned ^ ^ ^0.5 rotated as 0-0-0-0-0 positioned ^ ^ ^0.5 if entity @s[distance=..$(Sin)] run tag @s add BoundingFan
