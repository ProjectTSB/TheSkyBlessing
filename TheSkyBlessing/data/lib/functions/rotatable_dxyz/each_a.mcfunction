#> lib:rotatable_dxyz/each_a
#
# @within function lib:rotatable_dxyz/m

# 対象エンティティに一時タグ付与
    tag @s add DXYZTemp

# +X,+Y,+Z方向に範囲外のエンティティを除外
    execute facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as 8c6c3500-0ec4-4556-b818-24046a8a1352 positioned ^4 ^ ^ run tag @s[distance=5..] remove DXYZTemp
    execute facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as 8c6c3500-0ec4-4556-b818-24046a8a1352 positioned ^ ^4 ^ run tag @s[distance=5..] remove DXYZTemp
    execute facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as 8c6c3500-0ec4-4556-b818-24046a8a1352 positioned ^ ^ ^4 run tag @s[distance=5..] remove DXYZTemp