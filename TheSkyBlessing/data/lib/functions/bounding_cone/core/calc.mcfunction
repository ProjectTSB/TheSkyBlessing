#> lib:bounding_cone/core/calc
#
# @within function lib:bounding_cone/

# sin(頂角/4) 取得
    execute store result entity @s Rotation[0] float 0.00025 run data get storage lib: Argument.BoundingCone.Angle 1000
    execute in overworld rotated as @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^-1
    data modify storage lib: BoundingCone.Macro.Sin set from entity @s Pos[0]

# 汎用エンティティの向きを実行向きに合わせる
    execute in overworld run tp @s 0.0 0.0 0.0 ~ ~

# 引数をマクロ用ストレージにコピー
    data modify storage lib: BoundingCone.Macro.Selector set from storage lib: Argument.BoundingCone.Selector

# マクロと幾何学で判定
    function lib:bounding_cone/core/detect.m with storage lib: BoundingCone.Macro

# 汎用エンティティをリセット
    execute in overworld run tp @s 0.0 0.0 0.0 0.0 0.0

# ストレージリセット
    data remove storage lib: BoundingCone
    data remove storage lib: Argument.BoundingCone
