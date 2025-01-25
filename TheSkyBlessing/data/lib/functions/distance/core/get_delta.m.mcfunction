#> lib:distance/core/get_delta.m
#
# 差分取得
#
# @within function lib:distance/**

# 差分の位置にtp
    $tp @s ^$(X) ^$(Z) ^$(Y)

# マーカーのPos取得
    data modify storage lib: Distance.tmp.Pos set from entity @s Pos
    data modify storage lib: Distance.tmp.X set from storage lib: Distance.tmp.Pos[0]
    data modify storage lib: Distance.tmp.Y set from storage lib: Distance.tmp.Pos[1]
    data modify storage lib: Distance.tmp.Z set from storage lib: Distance.tmp.Pos[2]

# 負の値を正に
    execute positioned as @s unless predicate lib:pos/is_x_positive run function lib:distance/core/abs/x.m with storage lib: Distance.tmp
    execute positioned as @s unless predicate lib:pos/is_y_positive run function lib:distance/core/abs/y.m with storage lib: Distance.tmp
    execute positioned as @s unless predicate lib:pos/is_z_positive run function lib:distance/core/abs/z.m with storage lib: Distance.tmp

# 幾何学実行
    execute positioned 0.0 0.0 0.0 rotated 0 0 run function lib:distance/core/geometry.m with storage lib: Distance.tmp

# 汎用エンティティを原点にtp
    execute in overworld run tp @s 0.0 0.0 0.0 0.0 0.0
