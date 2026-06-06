#> lib:bounding_ray/core/select_max
#
# @within function lib:bounding_ray/core/rec.m

# 最も近いエンティティ以外を除外
    execute unless score #length lib_bounding_line = @s lib_bounding_line run return fail

# 長さをマクロストレージに格納
    execute store result storage lib: BoundingRay.Macro.offset double 0.0009765625 run scoreboard players get #length lib_bounding_line

# マクロコマンド実行
    execute positioned ^ ^ ^-4 positioned ~4 ~4 ~4 run function lib:bounding_ray/core/command.m with storage lib: BoundingRay.Macro
