#> lib:rotatable_dxyz/each_minus
#
# @within function lib:rotatable_dxyz/core/m

# -X,-Y,-Z方向に範囲外のエンティティを除外
    execute facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as 0-0-0-0-0 positioned ^-4 ^ ^ if entity @s[distance=5..] run return fail
    execute facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as 0-0-0-0-0 positioned ^ ^-4 ^ if entity @s[distance=5..] run return fail
    execute facing entity @s feet positioned as @s positioned ^ ^ ^3 rotated as 0-0-0-0-0 positioned ^ ^ ^-4 if entity @s[distance=5..] run return fail

# 判定成功
    return 1
