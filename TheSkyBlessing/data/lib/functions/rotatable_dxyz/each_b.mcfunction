#> lib:rotatable_dxyz/each_b
#
# @within function lib:rotatable_dxyz/m

# -X,-Y,-Z方向に範囲外のエンティティを除外
    execute facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as 8c6c3500-0ec4-4556-b818-24046a8a1352 positioned ^-4 ^ ^ run tag @s[distance=5..] remove DXYZTemp
    execute facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as 8c6c3500-0ec4-4556-b818-24046a8a1352 positioned ^ ^-4 ^ run tag @s[distance=5..] remove DXYZTemp
    execute facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as 8c6c3500-0ec4-4556-b818-24046a8a1352 positioned ^ ^ ^-4 run tag @s[distance=5..] remove DXYZTemp

# 一時タグを本タグに付け替え
    tag @s[tag=DXYZTemp] add DXYZ
    tag @s[tag=DXYZTemp] remove DXYZTemp