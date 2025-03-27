#> lib:bounding_fan/core/calc
#
# @within function lib:bounding_fan/

# sin(扇形の角度/4) 取得
    execute store result entity @s Rotation[0] float 0.00025 run data get storage lib: Argument.BoundingFan.Angle 1000
    execute rotated as @s rotated ~ 0.0 positioned 0.0 0.0 0.0 run tp @s ^ ^ ^-1
    data modify storage lib: BoundingFan.Macro.Sin set from entity @s Pos[0]

# 実行位置取得
    tp @s ~ ~ ~ ~ ~
    data modify storage lib: BoundingFan.Pos set from entity @s Pos
    data modify storage lib: BoundingFan.Macro.PosX set from storage lib: BoundingFan.Pos[0]
    data modify storage lib: BoundingFan.Macro.PosY set from storage lib: BoundingFan.Pos[1]
    data modify storage lib: BoundingFan.Macro.PosZ set from storage lib: BoundingFan.Pos[2]

# 汎用エンティティを原点に＆向きを水平に
    tp @s 0.0 0.0 0.0 ~ 0.0

# パラメータをコピー
    data modify storage lib: BoundingFan.Macro.Radius set from storage lib: Argument.BoundingFan.Radius
    execute store result storage lib: BoundingFan.Macro.HeightHalf float 0.0005 run data get storage lib: Argument.BoundingFan.Height 1000
    data modify storage lib: BoundingFan.Macro.Selector set from storage lib: Argument.BoundingFan.Selector

# マクロと幾何学で判定
    function lib:bounding_fan/core/detect.m with storage lib: BoundingFan.Macro

# 汎用エンティティをリセット
    execute in overworld run tp @s 0.0 0.0 0.0 0.0 0.0

# ストレージリセット
    data remove storage lib: BoundingFan
    data remove storage lib: Argument.BoundingFan
