#> lib:bounding_cylinder/core/detect.m
#
# @within function lib:bounding_cylinder/

# マクロと幾何学で判定
    $execute as $(Selector) at @s positioned $(PosX) ~ $(PosZ) at @s[distance=..$(Radius)] positioned ~ $(PosY) ~ positioned ~ ~$(HeightHalf) ~ at @s[distance=..$(HeightHalf)] run tag @s add BoundingCylinder
