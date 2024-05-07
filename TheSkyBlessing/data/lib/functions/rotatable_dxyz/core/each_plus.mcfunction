#> lib:rotatable_dxyz/core/each_plus
#
# @within function lib:rotatable_dxyz/m

# +X,+Y,+Z方向に範囲外のエンティティを除外
    execute facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as 8c6c3500-0ec4-4556-b818-24046a8a1352 positioned ^4 ^ ^ if entity @s[distance=5..] run return fail
    execute facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as 8c6c3500-0ec4-4556-b818-24046a8a1352 positioned ^ ^4 ^ if entity @s[distance=5..] run return fail
    execute facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as 8c6c3500-0ec4-4556-b818-24046a8a1352 positioned ^ ^ ^4 if entity @s[distance=5..] run return fail

# 判定成功
    return 1
